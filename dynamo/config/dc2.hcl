api_addr = "http://172.20.0.20:8204"
cluster_addr = "http://172.20.0.20:8205"

disable_mlock   = true
ui              = true
cluster_name    = "dc2"

storage "dynamodb" {
  ha_enabled = "true"
  region     = "us-east-1"
  table      = "vault-data"
  read_capacity  = 10
  write_capacity = 15
  access_key = "foo"
  secret_key = "bar"
  endpoint = "http://192.168.1.4:4566"
}

listener "tcp" {
  address = "0.0.0.0:8204"
  cluster_address  = "172.20.0.20:8205"
  tls_disable = "true"
}
