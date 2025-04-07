terraform {
  backend "s3" {
    bucket = "create a bucket in aws"
    key    = "state"
    region = "us-east-1"
    dynamodb_table = "create a table in aws"
  }
}
