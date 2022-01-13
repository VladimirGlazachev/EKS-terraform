variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}
variable "existing_vpc_name" {
  description = "Name of existing VPC"
  type        = string
  default     = "vpc-000000"
}
variable "cluster_name" {
  description = "Name of cluster"
  type        = string
  default     = "demo_eks_cluster"
}
variable "existing_subnets" {
  description = "List of existing subnets"
  type        = list(string)
  default     = ["subnet-1demotest1", "subnet-2demotest2"]
}
variable "cluster_version" {
  description = "Version of cluster"
  type        = string
  default     = "1.20"
}
