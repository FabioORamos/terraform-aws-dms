variable "endpoint_type" {
  description = "Endpoint type: `source` or `target`"
}

variable "engine_name" {
  default     = ""
  description = "The type of engine for the endpoint. Can be one of aurora | aurora-postgresql| azuredb | db2 | docdb | dynamodb | elasticsearch | kafka | kinesis | mariadb | mongodb | mysql | oracle | postgres | redshift | s3 | sqlserver | sybase"
}

variable "kms_key_arn" {
  default     = ""
  description = "KMS Key ARN to use a CMK instead of default shared key, when storage_encrypted is true"
}

variable "certificate_arn" {
  description = "The Amazon Resource Name (ARN) for the certificate"
}

variable "server_name" {
  description = "The host name of the server"
}

variable "database_name" {
  description = "The name of the endpoint database"
}

variable "endpoint_id" {
  description = "The database endpoint identifier"
}

variable "username" {
  description = "The user name to be used to login to the endpoint database"
}

variable "password" {
  description = "The password to be used to login to the endpoint database"
}

variable "port" {
  description = "The port used by the endpoint database"
}

variable "extra_connection_attributes" {
  description = "Additional attributes associated with the connection"
}

variable "ssl_mode" {
  description = "The SSL mode to use for the connection. Can be one of none | require | verify-ca | verify-full"
  default = "none"
}

variable "allocated_storage" {
  description = "The amount of storage (in gigabytes) to be initially allocated for the replication instance"
  type        = number
  default     = 50
}

variable "engine_version" {
  description = "The engine version number of the replication instance"
  default = "none"
}

# variable "replication_instance_class" {
#   description = "The compute and memory capacity of the replication instance as specified by the replication instance class"
#   default = "none"
# }

# variable "replication_instance_id" {
#   description = "The replication instance identifier"
# }

# variable "preferred_maintenance_window" {
#   description = "The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC)"
#   default = "none"
# }

# variable "availability_zone" {
#   description = "The EC2 Availability Zone that the replication instance will be created in"
# }

# variable "subnet_ids" {
#   description = "A list of the EC2 subnet IDs for the subnet group"
# }