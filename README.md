# `node-simple-webserver` with Terraform on Google Cloud Platform

_Deploy a Fastify-backed Node webserver with CI/CD using Cloud Build, deploying it on your choice of Compute Engine, App Engine, or Cloud Run. Supports multiple environments (dev, test, prod)._

This is an implementation of my [`node-simple-webserver`](https://github.com/mikaelvesavuori/node-simple-webserver) that runs on GCP (mostly) through automation with Terraform. The webserver is in the `src` folder, and Terraform files in `infra`.

The setup will create:

- **3 (envs) x 1 Compute Engine instances**, each pointing to a env'ed container image of the application supplied in this repo; logging and monitoring is enabled
- **1 x Cloud Source Repository** for contain your code
- **3 x Cloud Build triggers**, one per branch/env: dev, test, master (PROD); updates will rollout new container build which will then proceed to update the instance for that environment (yes, there will be downtime)
- **3 x Cloud Storage buckets** with life cycle policies (PROD: retain for 3 years, put in Coldline after 1 year; TEST: retain for 7 days; DEV: retain for 1 day)
- **3 x VPC networks** with one custom subnet per network; PROD is open to public, and TEST and DEV are locked to an IP range of your choosing

Terraform configuration should mostly be driven through the `vars.[service].tf` files, unless you need to do bigger operations on the modules.

Expect that some duplication exists, and that I've not had time and possibility to polish up that kind of detail.

**Warning!** No ideas why containers seem to hang in Compute Engine. They don't do so locally or in other places I've used the same code.

## Prerequisites

- Terraform installed
- gcloud CLI installed
- GCP account
- Environment set up correctly

## Project structure

- `/infra`: Terraform files
- `/src`: Node webserver
- `app.yaml`: App Engine configuration
- `cloudbuild.sh`: Cloud Build manifests for CI/CD with substitutions for three environments (DEV, TEST, PROD) when using Compute Engine
- `cloudbuild.appengine.sh`: Cloud Build manifests for CI/CD with substitutions for three environments (DEV, TEST, PROD) when using App Engine (NB. Not used with Terraform! Provided as a reference example)
- `cloudbuild.run.sh`: Cloud Build manifests for CI/CD with substitutions for three environments (DEV, TEST, PROD) when using Cloud Run (NB. Not used with Terraform! Provided as a reference example)
- `deploy-gae.sh`: Quick helper script to deploy and build the Docker file of the app to App Engine
- `Dockerfile`: Packages up your app the right way, exposes port 443 (HTTPS) publicly
- `setup.sh`: Creates a GCP project for you
- `submit-cloudrun.sh`: Quick helper script to deploy and build the Docker file of the app to Cloud Run

## How to deploy the stack

### 1. Google Cloud Platform

1. **Create new project**: Open `setup.sh` and modify to cover your own case, then run it (the last steps may fail if billing is not turned on)
2. Turn on billing for the project in the Billing page
3. Create a service account, put JSON file at the root of your drive; should be `~./.gcloud/`

### 2. Terraform

1. Navigate to `/infra`
2. Set your own variable in **a)** `/infra/variables.tf` and **b)** `/infra/main.tf` (under "credentials", point to the JSON file you just got) and finally set **c)** "server_image_name_base" in `/infra/vars.compute.tf` to include your project ID
3. Run `terraform init`
4. Run `terraform validate`
5. Run `terraform plan`
6. Run `terraform apply`

### 3. How to see the live webserver(s)

You will get "ephemeral IPs" that will change when the machine restarts (etc). Go to [Compute Engine](https://console.cloud.google.com/compute/instances) and find your IPs for the machines. You then need to add the port number (443), so a valid URL could be `https://35.242.150.200:443`.

**Warning!** No ideas why containers seem to hang in Compute Engine. They don't do so locally or in other places I've used the same code.

### How to change deployment platform (from Compute Engine to App Engine or Cloud Run)

Easy. Just change the default value in "cloudbuild_filename" (`/infra/vars.cloudbuild.tf`) to the respective platform's configuration file name.

Obviously, if you're not using the virtual machines you probably want to make sure they don't get created, in case you're not using Compute Engine.

## How to run the application

### Local

Go to `/src/`, run `npm install` and then `npm start`.

### Local Docker

Build with `docker build -t webserver .`. Run it with `docker run -it -p 443:443 webserver`.

### Deploy

Just commit your code to Cloud Source Repositories and it should build in Cloud Build.

## Manual steps not covered by automation

- In [Cloud Build, go to settings](https://console.cloud.google.com/cloud-build/settings/) and active/enable `Compute Engine` and `Service Accounts` (and `App Engine` and/or `Cloud Run` if you intend to use those)
- In [Cloud Source Repositories](https://source.cloud.google.com/), you'll need to take the provided information on how to point to the Google Git so you can start pushing code from your machine
