#setup provider which is aws in this case with aws credential
provider "aws"{
    region="ap-south-1"
    shared_credentials_file = "i"
}

#create ec2 instance
resource "aws_instance" "node"{
    ami ="ami-041d6256ed0f2061c"
    instance_type="t2.micro"
    key_name="key1"
    tags = {
        "type" = "node"
        "Name" ="Node1"
    }
}

#security group
# resource "aws_security_group" "sec_group" {
#   name        = "sec_group"
#   description = "Web Security Group for HTTP"
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#     }
# }   

# #attach to instance
# resource "aws_network_interface_sg_attachment" "sg_attachment" {
#   security_group_id    = "${aws_security_group.sec_group.id}"
#   network_interface_id = "${aws_instance.node.primary_network_interface_id}"
# }




