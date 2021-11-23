terraform {
  backend "s3" {
    bucket = "tech-int-tf-state"
    key    = "tech_int.tfstate"
    region = "us-east-1"
    dynamodb_table = "tech-int-tf-state"
  }
}
