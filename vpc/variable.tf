variable "name" {
  type        = string
  description = <<-EOT
    ID element. Usually the component or solution name, e.g. 'app' or 'jenkins'.
    This is the only ID element not also included as a `tag`.
    The "name" tag is set to the full `id` string. There is no tag with the value of the `name` input.
    EOT
}

variable "stage" {
  type        = string
  description = "ID element. Usually used to indicate role, e.g. 'prod', 'staging', 'source', 'build', 'test', 'deploy', 'release'"
}

variable "namespace" {
  type        = string
  description = "ID element. Usually an abbreviation of your organization name, e.g. 'eg' or 'cp', to help ensure generated IDs are globally unique"
}

variable "tags" {
  type        = map(string)
  description = "Tags to add to module resources"
  default     = {}
}

#Network

variable "cidr" {
  type        = string
  description = "cidr block"
}


variable "azs" {
  description = "The list of azs to deploy resources to"
  type        = list(string)
}

variable "private_subnets" {
  description = "The list of private_subnets to deploy resources to"
  type        = list(string)
}

variable "public_subnets" {
  description = "The list of public_subnets to deploy resources to"
  type        = list(string)
}