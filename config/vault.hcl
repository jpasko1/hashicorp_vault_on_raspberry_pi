ui = true
storage "file" {
  path = "/var/vault-data"
}

listener "tcp" {
 address     = "0.0.0.0:8200"
  tls_disable = 0
  tls_cert_file = "/etc/vault/domain.crt"
  tls_key_file = "/etc/vault/domain.key"
}
