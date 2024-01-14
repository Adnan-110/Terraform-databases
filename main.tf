module "docdb"{
  source                = "./vendor/modules/docdb"
  ENV                   = var.ENV
  DOCDB_PORT            = var.DOCDB_PORT
  DOCDB_INSTANCE_TYPE   = var.DOCDB_INSTANCE_TYPE
  DOCDB_INSTANCE_COUNT  = var.DOCDB_INSTANCE_COUNT
  DOCDB_ENGINE_VERSION  = var.DOCDB_ENGINE_VERSION
  DOCDB_ENGINE          = var.DOCDB_ENGINE
}

module "mysql"{
  source                = "./vendor/modules/mysql"
  ENV                   = var.ENV
  MYSQL_PORT            = var.MYSQL_PORT
  MYSQL_ENGINE          = var.MYSQL_ENGINE
  MYSQL_ENGINE_VERSION  = var.MYSQL_ENGINE_VERSION
  MYSQL_NODE_TYPE       = var.MYSQL_NODE_TYPE
  MYSQL_STORAGE         = var.MYSQL_STORAGE
  MYSQL_ENGINE_FAMILY   = var.MYSQL_ENGINE_FAMILY
}

module "redis"{
  source                = "./vendor/modules/redis"
  ENV                   = var.ENV
  REDIS_PORT            = var.REDIS_PORT
  REDIS_ENGINE          = var.REDIS_ENGINE
  REDIS_NODE_TYPE       = var.REDIS_NODE_TYPE
  REDIS_NODE_COUNT      = var.REDIS_NODE_COUNT
  REDIS_ENGINE_VERSION  = var.REDIS_ENGINE_VERSION
  REDIS_ENGINE_FAMILY   = var.REDIS_ENGINE_FAMILY
}

module "rabbitmq" {
  source                = "./vendor/modules/rabbitmq"
  ENV                   = var.ENV
  RABBITMQ_PORT         = var.RABBITMQ_PORT
  RABBITMQ_NODE_TYPE    = var.RABBITMQ_NODE_TYPE
}

output "redis_op" {
  value = module.redis.redis_op
}

# We cannot parameterize anything that's added in the source
# To limit that, we can use a tool called as Terrafile. All it does is that it clones the remote code from the specified branch and make it locally available.