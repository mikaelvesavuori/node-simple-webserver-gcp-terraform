#############
#  Project  #
#############

project = "YOUR_PROJECT_ID"
region = "europe-west1"
zone= "europe-west1-b"

name = "My Project"
project_id = "my-project"
billing_account_id = "my-billing-account"

service_name = "nodesimplewebserver"

service_account_compute_prod = "service_account_compute_prod"
service_account_compute_test = "service_account_compute_test"
service_account_compute_dev = "service_account_compute_dev"

env_prod = "prod"
env_test = "test"
env_dev = "dev"

gcp_service_list = [
  "cloudapis.googleapis.com",
  "sourcerepo.googleapis.com",
  "compute.googleapis.com",
  "cloudbuild.googleapis.com",
  "containerregistry.googleapis.com",
  "appengine.googleapis.com",
  "run.googleapis.com"
]

# "clouddebugger.googleapis.com",     # Stackdriver Debugger API
# "cloudtrace.googleapis.com",        # Stackdriver Trace API
# "iam.googleapis.com",               # Identity and Access Management (IAM) API
# "iamcredentials.googleapis.com",    # IAM Service Account Credentials API
# "logging.googleapis.com",           # Stackdriver Logging API
# "monitoring.googleapis.com",        # Stackdriver Monitoring API
# "oslogin.googleapis.com",           # Cloud OS Login API
# "servicemanagement.googleapis.com", # Service Management API
# "serviceusage.googleapis.com",      # Service Usage API
# "storage-component.googleapis.com", # Cloud Storage

#################
#  Cloud Build  #
#################

cloudbuild_repo = "webserver"
cloudbuild_filename = "cloudbuild.appengine.yaml"
cloudbuild_trigger_name = "webserver-trigger"

cloudbuild_branch_prod = "master"
cloudbuild_branch_test = "test"
cloudbuild_branch_dev = "dev"

####################
#  Compute Engine  #
####################

# EDIT THIS TO YOUR VALUES!
server_image_name_base = "gcr.io/YOUR_PROJECT_ID/YOUR_SERVICE"

# Reference: https://cloud.google.com/container-optimized-os/docs/release-notes
cos_image_name = "cos-stable-81-12871-1174-0"

disk_size = 10
disk_type = "pd-ssd"
instance_name = "webserver-instance"
subnet_name = "subnet"

instance_machinetype_prod = "n2-standard-16"
instance_machinetype_test = "n2-standard-2"
instance_machinetype_dev = "n2-standard-2"


####################
#    Networking    #
####################

tcp_ports = ["80", "443"]

network_name_prod = "network-prod"
network_name_test  = "network-test"
network_name_dev = "network-dev"

subnet_name_prod = "subnet-prod"
subnet_name_test = "subnet-test"
subnet_name_dev = "subnet-dev"

network_firewall_name_prod = "firewall-prod"
network_firewall_name_test = "firewall-test"
network_firewall_name_dev = "firewall-dev"

# Target service accounts
target_service_accounts_prod = [""]
target_service_accounts_test = [""]
target_service_accounts_dev = [""]

# IP ranges
ip_cidr_range_prod = "10.2.0.0/16"
ip_cidr_range_test = "10.4.0.0/16"
ip_cidr_range_dev = "10.6.0.0/16"

# Source ranges
source_range_prod = "0.0.0.0/0"
source_range_test = "193.234.97.131/32" # Your private IP, to test/simulate this
source_range_dev = "193.234.97.131/32" # Your private IP, to test/simulate this


#############################
#    Source Repositories    #
#############################

sourcerepo_name = "webserver"

#######################
#    Cloud Storage    #
#######################

bucket_name = "EU"
bucket_location = "storage_webserver-2kl34jd"

max_age_prod = "1095"
max_age_test = "7"
max_age_dev = "1"

storage_name_prod = "storage_webserver-bgjmrr34"
storage_name_test = "storage_webserver-cdsviou4"
storage_name_dev = "storage_webserver-klskl4hj"