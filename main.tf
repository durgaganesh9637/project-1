module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0c02fb55956c7d316"
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
 
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
