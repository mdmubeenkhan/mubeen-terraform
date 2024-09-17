
provider "aws" {
    region = "ap-south-2"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

module "aws_s3_bucket" {
    source = "./modules/s3"
    bucket_name = var.bucket_name
}

output "s3_bucket_arn" {
  value = module.aws_s3_bucket.bucket_arn
}

