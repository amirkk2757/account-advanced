variable "account_id" {
  description = "Target AWS account ID for this run"
  type        = string
}

variable "region" {
  description = "Target AWS region for this run (e.g., us-west-2)"
  type        = string
}

variable "role_name" {
  description = "Cross-account role Terraform assumes"
  type        = string
  default     = "TerraformDeploy"
}

variable "spoke_vpcs" {
  description = "Map of VPCs to create in this target (per run)"
  type = map(object({
    name                  = string
    cidr_block            = string
    number_azs            = number
    endpoint_subnet_cidrs = list(string)
    workload_subnet_cidrs = list(string)
  }))
}
