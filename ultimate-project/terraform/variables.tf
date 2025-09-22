variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default    = "ultimate-proj-cluster"
  
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.27"
  
}

variable"node_groups" {
  description = "Map of node group configurations"
  type = map(object({
    instance_types = list(string)
    desired_size   = number
    max_size       = number
    min_size       = number
    capacity_type  = string
  }))
  default = {
    on_demand = {
      instance_types = ["t3.medium"]
      desired_size   = 2
      max_size       = 3
      min_size       = 1
      capacity_type  = "ON_DEMAND"
    }
    spot = {
      instance_types = ["t3.medium"]
      desired_size   = 2
      max_size       = 3
      min_size       = 1
      capacity_type  = "SPOT"
    }
  }
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.1.0.0/24", "10.2.0.0/24", "10.3.0.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
   default     = ["10.4.0.0/24", "10.5.0.0/24", "10.6.0.0/24"]

}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}

