variable "amis" {
  type = map(string)
}

variable "key_name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "nameInstance_dev" {
  type = string
}

variable "instance_dev_count" {
  type = number
}

variable "nameInstance_development" {
  type = string
}

variable "nameInstance_development-ohio" {
  type = string
}

variable "nameDynamodb-dev-ohio" {
  type = string
}

variable "billing_modeDynamodb-dev-ohio" {
  type = string
}

variable "hash_keyDynamodb-dev-ohio" {
  type = string
}

variable "range_keyDynamodb-dev-ohio" {
  type = string
}

variable "nameBucket_dev" {
  type = string
}

variable "bucketEnvironment" {
  type = string
}

variable "bucket_acl" {
  type = string
}

variable "name_security_group_acesso-ssh" {
  type = string
}

variable "name_security_group_acesso-ssh-ohio" {
  type = string
}

variable "from_port_security_group" {
  type = number
}

variable "to_port_security_group" {
  type = number
}

variable "protocol_security_group" {
  type = string
}

variable "cidr_blocks_security_group" {
  type = list(string)
}

variable "tagName_security_group_acesso-ssh" {
  type = string
}

variable "tagName_security_group_acesso-ssh-ohio" {
  type = string
}

variable "terraform_organization" {
  type = string
}

variable "terraform_name_workspaces" {
  type = string
}