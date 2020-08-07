export REGION="europe-west1"
export ZONE="europe-west1-b"
export NEW_PROJECT_ID="my_project_here"

gcloud auth

gcloud projects create $NEW_PROJECT_ID

gcloud config set project $NEW_PROJECT_ID
gcloud config set compute/region $REGION
gcloud config set compute/zone $ZONE

# Make sure to turn on billing at this step!

# Enable the base APIs for this solution
gcloud services enable cloudapis.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable containerregistry.googleapis.com
gcloud services enable sourcerepo.googleapis.com
gcloud services enable compute.googleapis.com

# In case you want to use the better, "proper" solutions
gcloud services enable appengine.googleapis.com
gcloud services enable run.googleapis.com