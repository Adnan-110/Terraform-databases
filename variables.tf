variable "ENV" {}

# Document DB Variables
variable "DOCDB_PORT" {}
variable "DOCDB_INSTANCE_TYPE" {}
variable "DOCDB_INSTANCE_COUNT" {}
variable "DOCDB_ENGINE_VERSION" {}
variable "DOCDB_ENGINE" {}

# RDS/MYSQL DB Variable
variable "MYSQL_PORT" {}
variable "MYSQL_ENGINE" {}
variable "MYSQL_ENGINE_VERSION" {}
variable "MYSQL_NODE_TYPE" {}
variable "MYSQL_STORAGE" {}
variable "MYSQL_ENGINE_FAMILY" {}

# Redis/Elastic Cache Variable
variable "REDIS_PORT" {}
variable "REDIS_ENGINE" {}
variable "REDIS_NODE_TYPE" {}
variable "REDIS_NODE_COUNT" {}
variable "REDIS_ENGINE_VERSION" {}
variable "REDIS_ENGINE_FAMILY" {}

# RabbitMQ Variable
variable "RABBITMQ_PORT" {}
variable "RABBITMQ_NODE_TYPE" {}