gcloud auth application-default login

cd infra

terraform init
terraform validate
terraform plan
terraform apply