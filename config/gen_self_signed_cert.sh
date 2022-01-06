#!/bin/bash

# Generate private key(domain.key) and  and CSR with single command

openssl req -newkey rsa:2048 -nodes -keyout domain.key -out domain.csr


# Create self signed certificate

openssl x509 -signkey domain.key -in domain.csr -req -days 10000 -out domain.crt
