data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  key_name               = var.key_name
  security_groups        = [aws_security_group.web_sg.name]
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd awscli
              systemctl start httpd
              systemctl enable httpd

              echo "<h1>Web Service Running</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "web-service"
  }
}
