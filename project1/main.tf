# resource "aws_instance" "ec2_example" {
#     ami = "ami-08a52ddb321b32a8c" #amazon linux 2023
#     instance_type = "t2.micro"
#     tags = {
#       Name = "EC2 Instance with remote state"
#     }
# }