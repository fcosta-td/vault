# URLs:

consul_dc1: http://0.0.0.0:8509
vault_dc1:  http://0.0.0.0:8202

consul_dc1: http://0.0.0.0:8519
vault_dc2:  http://0.0.0.0:8204


# Configure Vault

After vault is installed, create `admin` policy with the following content on both servers:

```
path "*" {
  capabilities = ["create", "delete", "list", "read", "sudo", "update"]
}
```

On both vault servers, run the following command:
```
vault token create -policy=admin
```

Copy the vault token from each one, and edit vsync configuration token from source and destination


# Vault path

Create a mount called `test-kv` on both servers, and on the source server create also a secret in the following path :

test-kv/data/stg/us-east-1/infra/mongodb/batatas/bd1/admin

# Vsync

Load data from source
```
vsync origin --config ./transform.json
```

Send data to destination
```
vsync destination --config ./transform.json
```
