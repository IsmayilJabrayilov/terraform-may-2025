resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")
tags = {
  Enviroment = "Dev"
  Team = "Devops"
}
}