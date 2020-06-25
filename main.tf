provider "aws" {
    version = "~> 2.0"
    region = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
    profile = "personal"
}
