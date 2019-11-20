provider "aws" {
    version = "2.12.0"
    region = "eu-central-1"
    # There is ann issue with using profile or simply I'm too stupid to handle this
    #shared_credentials_file = "/Users/krzysztofm/.aws/credentials"
    #profile = "terrafrom"
}

resource "aws_instance" "helloworld" {
  ami = "ami-050a22b7e0cf85dd0" #Ubuntu Server 16.04 LTS (HVM), SSD Volume Type
  instance_type = "t2.micro"
}
