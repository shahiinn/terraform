provider "aws" {
  access_key = "<AWS_ACCESS_KEY>"
  secret_key = "<AWS_SECRET_KEY>"
  region     = "<AWS_REGION>"
}

resource "aws_instance" "<AWS_INSTANCE_NAME>" {
  count         = <NO_OF_SERVERS>
  ami           = "<AWS_AMI-ID>"
  subnet_id     = "<AWS_SUBNET_ID>"
  vpc_security_group_ids  = ["AWS_SG_ID"]
  key_name      = "AWS_KEYFILE_NAME"
  instance_type = "<AWS_INSTANCE_TYPE>"
  tags {
    Name = "<AWS_SERVER_NAME>-${count.index}"
  }
}
