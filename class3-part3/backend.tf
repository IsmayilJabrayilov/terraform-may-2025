terraform {
  backend "s3" {
    bucket = "ismayil-jabrayilov"
    key    = "ismayil/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
