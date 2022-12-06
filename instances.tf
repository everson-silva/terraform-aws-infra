resource "aws_instance" "dev" {
    count = var.instance_dev_count
    ami = var.amis["us-east-1"]
    instance_type = var.instance_type
    key_name = var.key_name
    tags = {
      Name = "${var.nameInstance_dev}${count.index}"
    }
    vpc_security_group_ids = [ aws_security_group.acesso-ssh.id ]
}

resource "aws_instance" "development" {
    ami = var.amis["us-east-1"]
    instance_type = var.instance_type
    key_name = var.key_name
    tags = {
      Name = var.nameInstance_development
    }
    vpc_security_group_ids = [ aws_security_group.acesso-ssh.id ]
    depends_on = [ aws_s3_bucket.dev ]
}

resource "aws_instance" "development-ohio" {
    provider = aws.ohio
    ami = var.amis["ohio"]
    instance_type = var.instance_type
    key_name = var.key_name
    tags = {
      Name = var.nameInstance_development-ohio
    }
    vpc_security_group_ids = [ aws_security_group.acesso-ssh-ohio.id ]
    depends_on = [ aws_dynamodb_table.dynamodb-dev-ohio ]
}