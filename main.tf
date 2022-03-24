module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-04505e74c0741db8d"
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
 
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
