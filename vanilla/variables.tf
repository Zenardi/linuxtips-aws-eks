variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "ssm_vpc" {
  type = string
}

variable "ssm_public_subnets" {
  type = list(string)
}

variable "ssm_private_subnets" {
  type = list(string)
}

variable "ssm_pod_subnets" {
  type = list(string)
}

variable "k8s_version" {
  type = string
}

variable "auto_scale_options" {
  type = object({
    min     = number
    max     = number
    desired = number
  })
  description = "Configurações de Autoscaling do Cluster"
}

variable "nodes_instance_sizes" {
  type        = list(string)
  description = "Lista de tamanhos das instâncias do projeto"
}

variable "addon_cni_version" {
  type        = string
  default     = "v1.18.3-eksbuild.2"
  description = "Versão do Addon da VPC CNI"
}

variable "addon_coredns_version" {
  type        = string
  default     = "v1.11.3-eksbuild.1"
  description = "Versão do Addon do CoreDNS"
}

variable "addon_kubeproxy_version" {
  type        = string
  default     = "v1.31.2-eksbuild.3"
  description = "Versão do Addon do Kube-Proxy"
}


#### Node Groups - Custom

variable "custom_ami" {
  type        = string
  description = "AMI ID customizada para os nodes"
  default     = "ami-01d396130bcd204a1"
}