module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.26.0"

  cluster_name    = "trainstats-eks-cluster"
  cluster_version = "1.30"

  subnet_ids = module.trainstats-vpc.private_subnets
  vpc_id     = module.trainstats-vpc.vpc_id

  tags = {
    environment = "production"
    application = "trainstats"
  }

  eks_managed_node_groups = {
    prod = {
      min_size     = 1
      max_size     = 3
      desired_size = 3

      instance_types = ["t3.small"]
    }
  }
}