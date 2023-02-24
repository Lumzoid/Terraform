variable "ami" {
  description = "ami for webserver instance"
  type        = string
  default     = "ami-099effcf516c942b7"

}

variable "instance_type" {
  description = "Instance type for webserver"
  type        = list(any)
  default     = ["t2.micro", "t2.nano", "t3.nano"]

}

variable "tags" {
  description = "Tags for webserver instance"
  type        = map(any)
  default = {
    Name    = "helloworld"
    project = "terraform_project"
    Env     = "prod"
  }

}

variable "associate_public_ip_address" {
  description = "Ip address for instance"
  type        = bool
  default     = true

}

#Route 53 variable

variable "domain-name" {
  description = "domain name"
  type        = string
  default     = "oluabi.click"

}

variable "record_name" {
  description = "sub domain name"
  type        = string
  default     = "www"

}