resource "aws_instance" "beauty_ass" {
  disable_api_termination = true

  key_name               = var.instance_keypair
  ami                    = "ami-06dd92ecc74fdfb36"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instace_sg.id]

  tags = {
    project = var.project_name
    Name    = "${local.namespace}-instance"
  }

  depends_on = [aws_security_group.instace_sg]
}
