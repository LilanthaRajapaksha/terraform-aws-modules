/*==============================================================
  Terraform Module for AWS S3 Bucket And Related Configurations  
================================================================*/

# Create S3 Bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Description = var.bucket_description
    User        = split("/", data.aws_caller_identity.current_user.arn)[1]
    Terraform   = true
  }
}
