resource "aws_instance" "helloworld" {
  ami                         = var.ami
  instance_type               = var.instance_type[0]
  associate_public_ip_address = var.associate_public_ip_address
  tags                        = var.tags
  user_data                   = <<-EOF
#!/bin/bash
yum install httpd -y
service httpd start
chkconfig httpd on
echo "First Webserver" > /var/www/html/index.html

EOF
}

resource "aws_instance" "helloworld2" {
  ami                         = var.ami
  instance_type               = var.instance_type[1]
  associate_public_ip_address = var.associate_public_ip_address
  tags                        = var.tags
  user_data                   = <<-EOF
#!/bin/bash
yum install httpd -y
service httpd start
chkconfig httpd on
echo "Second Webserver" > /var/www/html/index.html

EOF
}
