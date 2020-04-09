resource "aws_instance" "web" {
  count         = "${var.ec2_count}"
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.subnet_id}"
  key_name      = "${var.key_name}"
  security_groups = "${var.security_groups}"
  
  tags = {
    Name = "${var.tags}-Instance"
  }
}
