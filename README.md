Ansible NATS
=========

Installs and configures a [NATS server](https://github.com/nats-io/nats-server)

Requirements
------------

A running internet connection to download packages

Role Variables
--------------

Look up the nats documentation for definitions

### Listen Ports
- nats_client_port
- nats_monitor_port

### TLS 
- nats_tls_enabled : if set, enable tls configuration
- nats_tls_cert_file : tls certificate
- nats_tls_key_file : tls key file 
- nats_tls_ca_file : tls ca file
- nats_tls_timeout : timeout for establishing tls connections

### Clustering

#### Routes
- nats_route_port : the port to listen to for the cluster routes

Configuring a nats group like so will enable routes between machines  
```
[nats]
nats1
nats2
```

#### Authorisation

- nats_auth_user : user 
- nats_auth_password : password
- nats_auth_timeout : connection timeout

Dependencies
------------

No dependencies

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

https://github.com/Igosuki
