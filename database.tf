resource "aws_dynamodb_table" "dynamodb-dev-ohio" {
  provider       = aws.ohio
  name           = var.nameDynamodb-dev-ohio
  billing_mode   = var.billing_modeDynamodb-dev-ohio
  hash_key       = var.hash_keyDynamodb-dev-ohio
  range_key      = var.range_keyDynamodb-dev-ohio

  attribute {
    name = var.hash_keyDynamodb-dev-ohio
    type = "S"
  }

  attribute {
    name = var.range_keyDynamodb-dev-ohio
    type = "S"
  }
}