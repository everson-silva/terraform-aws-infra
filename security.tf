resource "aws_security_group" "acesso-ssh" {
  name        = var.name_security_group_acesso-ssh
  description = var.name_security_group_acesso-ssh

  ingress {
    from_port        = var.from_port_security_group
    to_port          = var.to_port_security_group
    protocol         = var.protocol_security_group
    cidr_blocks      = var.cidr_blocks_security_group
  }

  tags = {
    Name = var.tagName_security_group_acesso-ssh
  }
}

resource "aws_security_group" "acesso-ssh-ohio" {
  provider = aws.ohio
  name        = var.name_security_group_acesso-ssh-ohio
  description = var.name_security_group_acesso-ssh-ohio

  ingress {
    from_port        = var.from_port_security_group
    to_port          = var.to_port_security_group
    protocol         = var.protocol_security_group
    cidr_blocks      = var.cidr_blocks_security_group
  }

  tags = {
    Name = var.tagName_security_group_acesso-ssh-ohio
  }
}