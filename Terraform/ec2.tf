#setup provider which is aws in this case with aws credential
provider "aws"{
    region="ap-south-1"
    access_key = "AKIAXHUQFAXYFA4ZE6FD"
    secret_key = "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"
}

#create ec2 instance
resource "aws_instance" "Node1"{
    ami ="ami-041d6256ed0f2061c"
    instance_type="t2.micro"
    region  = "ap-south-1"
}

export AWS_ACCESS_KEY_ID="AKIAXHUQFAXYCZ3MNH6Y"
export AWS_SECRET_ACCESS_KEY="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"

# #create ec2 instance
# resource "aws_instance" "Node2"{
#     ami ="ami-041d6256ed0f2061c"
#     type="t2.micro"
#     region  = "ap-south-1"
# }

# #create ec2 instance
# resource "aws_instance" "Node3"{
#     ami =""
#     type="t2.micro"
#     region  = "ap-south-1"
# }
