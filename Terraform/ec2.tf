#setup provider which is aws in this case with aws credential
provider "aws"{
    region="ap-south-1"
}

#create ec2 instance
resource "aws_instance" "Node1"{
    ami ="ami-041d6256ed0f2061c"
    instance_type="t2.micro"
}

#create ec2 instance
resource "aws_instance" "Node2"{
    ami ="ami-041d6256ed0f2061c"
    instance_type="t2.micro"
}

#create ec2 instance
resource "aws_instance" "Node3"{
    ami ="ami-041d6256ed0f2061c"
    instance_type="t2.micro"
}
