# resource "aws_s3_bucket" "mybucket" {
#   bucket = "mybucket_tf_state"
#   acl    = "private"
# }

# resource "aws_dynamodb_table" "mytable" {
#   name           = "mytable"
#   hash_key       = "LockID"
#   read_capacity  = 20
#   write_capacity = 20

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }



# terraform {
#   backend "s3" {
#     bucket         = aws_s3_bucket.mybucket.id
#     key            = "path/to/my/key"
#     region         = var.region
#     dynamodb_table = aws_dynamodb_table.mytable.name
#     encrypt        = true
#   }
# }