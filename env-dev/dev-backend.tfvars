 terraform {   
    backend "s3" {
    bucket  = "adnan-tf-state-bucket"
    key     = "databases/dev/terraform.tfstate"
    region  = "us-east-1"
    }
 }
    