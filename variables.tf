variable "max_replicas" {
  description = "(Required) The max capacity of the scalable target"
  type        = number
  default     = 1
}

variable "min_replicas" {
  description = "(Required) The min capacity of the scalable target."
  type        = number
  default     = 1
}

variable "max_cpu_util" {
  description = "(Required) The target value for cpu utilization scaling."
  type        = number
  default     = 100
}

variable "max_memory_util" {
  description = "(Required) The target value for memory utilization scaling."
  type        = number
  default     = 80
}

variable "cluster_name" {
  description = "ECS cluster name"
  type        = string
}

variable "service_name" {
  description = "ECS service name"
  type        = string
}
