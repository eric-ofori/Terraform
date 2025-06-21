module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "EC2-Terraform"

  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-0d944e2e8f288814c"]
  subnet_id              = "subnet-00e80f6513153fc65"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}