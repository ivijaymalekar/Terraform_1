resource "aws_vpc" "main" {
  cidr_block = "172.31.0.0/16"

  tags = {
    Name = "My VPC"
  }
}

resource "aws_subnet" "public" {
  vpc_id            = "vpc-019787a567d54e820"
  cidr_block        = "172.31.0.0/16"
  availability_zone = "eu-central-1"

  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_security_group" "all_instances" {
  name        = "all_instances_sg"
  description = "Security group for all instances"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "All instances SG"
  }
}

resource "aws_instance" "all_instances" {
  count = 3

  ami           = "ami-03cceb19496c25679"
  instance_type = "t2.micro"
}

