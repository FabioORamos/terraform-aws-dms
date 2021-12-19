#==============================================================
# dms-endpoints.tf
#==============================================================

# Create an endpoint for the source database

resource "aws_dms_endpoint" "default" {
  endpoint_type               = var.endpoint_type
  engine_name                 = var.engine_name
  kms_key_arn                 = try(var.kms_key_arn, "")
  certificate_arn             = var.certificate_arn
  
  server_name                 = var.server_name
  database_name               = var.database_name
  endpoint_id                 = var.endpoint_id
  password                    = var.password
  username                    = var.username
  port                        = var.port 
  extra_connection_attributes = ""
  ssl_mode                    = try(var.ssl_mode, "none")
  
#   tags {
#     Name        = "${var.stack_name}-dms-${var.environment}-source"
#     owner       = "${var.owner}"
#     stack_name  = "${var.stack_name}"
#     environment = "${var.environment}"
#     created_by  = "terraform"
#   }
# }

# # Create an endpoint for the target database

# resource "aws_dms_endpoint" "target" {
#   database_name = "${var.target_db_name}"
#   endpoint_id   = "${var.stack_name}-dms-${var.environment}-target"
#   endpoint_type = "target"
#   engine_name   = "${var.target_engine}"
#   password      = "${var.target_password}"
#   port          = "${var.target_db_port}"
#   server_name   = "${aws_db_instance.target.address}"
#   ssl_mode      = "none"
#   username      = "${var.target_username}"

#   tags {
#     Name        = "${var.stack_name}-dms-${var.environment}-target"
#     owner       = "${var.owner}"
#     stack_name  = "${var.stack_name}"
#     environment = "${var.environment}"
#     created_by  = "terraform"
#   }
# }