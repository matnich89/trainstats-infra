module "trainstats-vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.13.0"

  name            = "trainstats-vpc"
  cidr            = var.vpc_cidr_block
  private_subnets = var.private_subnet_cidr_blocks
  public_subnets  = var.public_subnet_cidr_blocks
  azs             = ["us-east-1a"]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  tags = {
    "kubernetes.io/cluster/trainstats-eks-cluster" = "shared"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/trainstats-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                       = 1
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/trainstats-eks-cluster" = "shared"
    "kubernetes.io/role/internal-elb"              = 1
  }
}