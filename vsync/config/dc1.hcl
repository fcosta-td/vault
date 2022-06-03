api_addr = "http://172.20.0.10:8202"
cluster_addr = "http://172.20.0.10:8203"

disable_mlock   = true
ui              = true
cluster_name    = "dc1"

storage "consul" {
  address = "172.20.0.9:8500"
  path    = "vault"
}

listener "tcp" {
  address = "0.0.0.0:8202"
  cluster_address  = "172.20.0.10:8203"
  tls_disable = "true"
}
