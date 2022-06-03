api_addr = "http://172.20.0.20:8204"
cluster_addr = "http://172.20.0.20:8205"

disable_mlock   = true
ui              = true
cluster_name    = "dc2"

storage "consul" {
  address = "172.20.0.19:8501"
  path    = "vault"
}

listener "tcp" {
  address = "0.0.0.0:8204"
  cluster_address  = "172.20.0.20:8205"
  tls_disable = "true"
}
