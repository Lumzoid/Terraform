# Create a new load balancer
resource "aws_elb" "helloworld" {
  name               = "helloworld-elb"
  availability_zones = ["ca-central-1a", "ca-central-1b"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  instances                 = ["${aws_instance.helloworld.id}", "${aws_instance.helloworld2.id}"]
  cross_zone_load_balancing = true
  idle_timeout              = 50

  tags = {
    Name = "terraform-elb"
  }
}