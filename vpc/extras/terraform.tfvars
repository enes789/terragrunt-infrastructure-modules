name      = "vpc"
stage     = "dev"
namespace = "retool"

cidr    = "30.0.0.0/16"
azs = ["us-east-1a", "us-east-1b", "us-east-1c"]
private_subnets = ["30.0.1.0/24", "30.0.2.0/24", "30.0.3.0/24"]
public_subnets  = ["30.0.101.0/24", "30.0.102.0/24", "30.0.103.0/24"]