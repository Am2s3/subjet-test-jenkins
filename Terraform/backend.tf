terraform {
  backend "s3" {
    bucket = "my-tf-test-bucket-miguel-tfstate"
    key    = "default-infrastructure.tfstate"
    region = "us-east-1"
  }
}
