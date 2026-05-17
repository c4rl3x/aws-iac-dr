terraform {
  backend "s3" {
    bucket         = "tf-state-infra-v2-561786496022"
    key            = "dr-site/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
  }
}