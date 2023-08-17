resource "aws_s3_bucket" "example" {
  bucket = "danibish-bucket"

  tags = {
    Environment = "uwu"
  }
}

resource "aws_dynamodb_table" "state_locking" {
  hash_key = "LockID"
  name     = "dynamodb-state-locking"
  attribute {
    name = "LockID"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}