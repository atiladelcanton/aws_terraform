resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}

resource "aws_s3_object" "this" {
  bucket      = aws_s3_bucket.this.bucket
  key         = "config/${local.ip_filepath}"
  content_type = "application/json"
  source      = local.ip_filepath
  etag        = filemd5(local.ip_filepath)
}

resource "aws_s3_bucket" "manual"{
  bucket = "meubucketmanuallindao"
  tags = {
    "Importado" : "21/02/2023"
  }
}