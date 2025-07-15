data "aws_subnet" "selected" {
  filter {
    name = "tag:Name"
    values = ["hello"]
  }
}


resource "aws_subnet" "main" {
  vpc_id     = data.aws_subnet.selected.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}