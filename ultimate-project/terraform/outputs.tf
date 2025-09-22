output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
  
}
output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = var.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for the EKS cluster"
  value       = module.eks.cluster_endpoint
}