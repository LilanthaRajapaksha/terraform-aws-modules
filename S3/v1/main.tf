/*==============================================================
  Terraform Module for AWS S3 Bucket And Related Configurations  
================================================================*/

# Create S3 Bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name

  tags = merge(
    {
      Name        = var.bucket_name
      Description = var.bucket_description
      Owner       = split("/", data.aws_caller_identity.current_user.arn)[1]
      Terraform   = true
    },
    var.custom_tags != null ? var.custom_tags : {}
  )
}
