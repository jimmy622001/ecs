module "vpc-module" {
  source      = "git@github.com:RajanikanthGitHub/vpc-module.git"
  vpc_cidr    = "192.168.0.0/16"
  tenancy     = "default"
  vpc_id      = module.vpc-module.vpc_id
  subnet_cidr = "192.168.1.0/24"
}

module "ec2-module" {
  source        = "git@github.com:jimmy622001/ecs.git"
  ec2_count     = "1"
  ami_id        = "ami-02476eb835fc66157"
  instance_type = "t2.micro"
  subnet_id     = module.vpc-module.subnet_id
}