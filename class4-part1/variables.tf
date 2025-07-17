variable "region" {
  default = "us-east-1"
  type = string
  description = "Provide region"
}

 variable "key_name" {

    default = "my-key"
    type = string
    description = "Provide key name"
   }


 variable "port" {

    default = [22, 80]
    type = list(number)
    description = "Provide Port"
   }



variable "ec2_web" {
  default = {
    ami_id = "ami-05ffe3c48a9991133"
    type = "t2.micro"
    subnet =  "subnet-0bea31d64cb0d37c8"
  }
type = map(string)
}
  