variable "name_prefix" {
  description = "String to prefix on object names"
  type = "string"
}

variable "name_suffix" {
  description = "String to append to object names. This is optional, so start with dash if using"
  type = "string"
  default = ""
}

variable "input_tags" {
  description = "Map of tags to apply to resources"
  type = "map"
  default = {
    Developer   = "StratusGrid"
    Provisioner = "Terraform"
  }
}

variable "log_bucket_id" {
  description = "ID of bucket to log config change snapshots to"
  type = "string"
}

variable "snapshot_delivery_frequency" {
  description = "Frequency which AWS Config snapshots the configuration"
  type = "string"
  default = "Three_Hours"
}

variable "sns_topic_arn" {
  description = "ARN for sns alarm to be targeted for performance alerts"
  type = "string"
  default = ""
}