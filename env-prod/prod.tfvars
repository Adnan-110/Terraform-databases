ENV                 = "prod"


# Document DB Variables
DOCDB_PORT           = 27017
DOCDB_INSTANCE_TYPE  = "db.t3.medium"
DOCDB_INSTANCE_COUNT = 1
DOCDB_ENGINE_VERSION = "4.0.0"
DOCDB_ENGINE         = "docdb"

# RDS/MYSQL DB Variables
MYSQL_PORT           = 3306
MYSQL_ENGINE         = "mysql"
MYSQL_ENGINE_VERSION = "5.7"
MYSQL_NODE_TYPE      = "db.t3.micro"
MYSQL_STORAGE        = 10
MYSQL_ENGINE_FAMILY  = "mysql5.7" 

# Redis/Elastic Cache Variable
REDIS_PORT           = 6379
REDIS_NODE_TYPE      = "cache.t3.micro"
REDIS_ENGINE         = "redis"
REDIS_NODE_COUNT     = 1
REDIS_ENGINE_VERSION = "6.x"
REDIS_ENGINE_FAMILY  = "redis6.x"

# RabbitMQ Variable
RABBITMQ_NODE_TYPE   = "t3.micro"
RABBITMQ_PORT        = 5672