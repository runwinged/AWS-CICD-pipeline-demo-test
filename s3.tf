resource "aws_s3_bucket" "ditf_artifacts" {
  bucket = "di-tf-artifacts-cicdtest"
}

resource "aws_s3_bucket_acl" "ditf_acl" {
  bucket = aws_s3_bucket.ditf_artifacts.id
  acl    = "private"
}