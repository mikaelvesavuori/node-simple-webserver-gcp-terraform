export PROJECT_ID="YOUR_PROJECT_ID"
export RUN_ENV="dev"
export REPO="webserver"
export SERVICE=nodesimplewebserver-${RUN_ENV}
export REGION="europe-west1"

gcloud builds submit \
  --config=cloudbuild.cloudrun.yaml \
  --substitutions=_ENV="${RUN_ENV}",_SERVICE="${SERVICE}",_REGION="${REGION}",_PROJECT="${PROJECT_ID}"_REPO="${REPO}"