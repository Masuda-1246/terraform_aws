
resource "aws_key_pair" "keypair" {
  key_name   = "${var.project}-${var.environment}-keypair"
  public_key = file("./src/${var.project}-${var.environment}-keypair.pub")

  tags = {
    Name        = "${var.project}-${var.environment}-keypair"
    Project     = var.project
    Environment = var.environment
  }
}

resource "aws_instance" "app_server" {
  ami                    = data.aws_ami.app.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.keypair.key_name
  subnet_id              = aws_subnet.public_subnet_1a.id
  vpc_security_group_ids = [aws_security_group.app_sg.id, aws_security_group.opmg_sg.id]

  tags = {
    Name        = "${var.project}-${var.environment}-app"
    Project     = var.project
    Environment = var.environment
    Type        = "app"
  }
}