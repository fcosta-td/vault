api_addr = "http://172.20.0.10:8202"
cluster_addr = "http://172.20.0.10:8203"

disable_mlock   = true
ui              = true
cluster_name    = "dc1"

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
  address = "0.0.0.0:8202"
  cluster_address  = "172.20.0.10:8203"
  tls_disable = "true"
}
