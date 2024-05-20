variable "region" {
  type        = string
  description = "Region in which to create resources"
}

variable "thumbprint_list" {
  type        = list(string)
  description = "GitHub OICD thumbprints"
}

variable "ecr_repository" {
  type        = string
  description = "ECR Repo that GitHub can push to"
}