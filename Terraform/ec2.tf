#setup provider which is aws in this case with aws credential
provider "aws"{
    region="ap-south-1"
}

#create ec2 instance
resource "aws_instance" "Node2"{
    ami ="ami-041d6256ed0f2061c"
    instance_type="t2.micro"
}

#security group
resource "aws_security_group" "sg" {
  name        = "sec_group"
  description = "Web Security Group for HTTP"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
}   

#attach to instance
resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = "${data.aws_security_group.sec_group.id}"
  network_interface_id = "${aws_instance.web.primary_network_interface_id}"
}




