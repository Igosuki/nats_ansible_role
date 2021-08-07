Ansible NATS
=========

Installs and configures a [NATS server](https://github.com/nats-io/nats-server)

Requirements
------------

A running internet connection to download packages

Role Variables
--------------

Look up the nats documentation for definitions

### Logging
- nats_debug_logging : enable debug logging
- nats_trace_logging : enable trace logging

### Net
- nats_client_port : nats cli port
- nats_monitor_port : monitoring port
- nats_listen_on : bind address

### TLS 
- nats_tls_enabled : if set, enable tls configuration
- nats_tls_cert_file : tls certificate
- nats_tls_key_file : tls key file 
- nats_tls_ca_file : tls ca file
- nats_tls_timeout : timeout for establishing tls connections

### Clustering

#### Routes
- nats_route_port : the port used to communicate and route messages within the cluster

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

### Streaming

- nats_cluster_id : the cluster identifier
- nats_discover_prefix : NATS subject for client server discovery 
- nats_store_type : NATS storage type
- nats_dir : NATS file storage, if nats_store_type is 'file'

#### Store Limits 

These configurations are used to define limits imposed on channels.

- nats_max_channels : max number of channels
- nats_max_msgs : max number of messages in a channel
- nats_max_subs : max number of subscriptions on a channel
- nats_max_bytes : max number of bytes of messages in a channel before space is reclaimed
- nats_max_age : max time to keep a message in a channel
- nats_max_inactivity : max time without messages before the channel is deleted
- nats_channel_overrides : a dictionnary of channel overrides, the key is a NATS subscription expression and the value is a dict with max_msgs, max_bytes, max_age, max_subs, max_inactivity 


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

### Contributing

Build the docker image : ```docker build -t ubuntu-python-systemd:20.04 .```

Install the requirements : ```pip install -r test_requirements.txt```

Test : ```molecule check```
