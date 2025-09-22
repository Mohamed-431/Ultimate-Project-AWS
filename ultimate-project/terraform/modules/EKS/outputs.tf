output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = var.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for the EKS cluster"
  value       = aws_eks_cluster.main.endpoint
}

output "vpc_id" {
  description = "The ID of the VPC where the EKS cluster is deployed"
  value       = var.vpc_id
}