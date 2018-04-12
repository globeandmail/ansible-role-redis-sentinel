ansible-role-redis-sentinel
===========================

Install and configure Redis Sentinel from source


Variables
------

`redis_conf` (REQUIRED)

`redis_sentinel_conf` (REQUIRED)

`redis_notification_script` (OPTIONAL)

`redis_src` (OPTIONAL defaults/main.yml)




Example
------

#### group_vars/dev-redis-sentinel/vars.yml
```
redis_conf: group_files/dev-redis-sentinel/redis.conf
redis_sentinel_conf: group_files/dev-redis-sentinel/sentinel.conf
redis_notification_script: group_files/dev-redis-sentinel/notify.sh
```

#### host_vars/devredissentinel01.example.org/vars.yml
```
redis_conf: host_files/devredissentinel01.example.org/redis.conf
```

#### directory structure
```
.
├── group_files
│   ├── dev-redis-sentinel
│   │   ├── notify.sh
│   │   ├── redis.conf
│   │   └── sentinel.conf
│   │
│   ├── prod-redis-sentinel
│   │   ├── notify.sh
│   │   ├── redis.conf
│   │   └── sentinel.conf
│   │
│   └── stg-redis-sentinel
│       ├── notify.sh
│       ├── redis.conf
│       └── sentinel.conf
│
├── group_vars
│   ├── dev-redis-sentinel
│   │   └── vars.yml
│   ├── prod-redis-sentinel
│   │   └── vars.yml
│   └── stg-redis-sentinel
│       └── vars.yml
│
├── host_files
│   ├── devredissentinel01.example.org
│   │   └── redis.conf
│   ├── prodredissentinel01.example.org
│   │   └── redis.conf
│   └── stgredissentinel01.example.org
│       └── redis.conf
│
├── host_vars
│   ├── devredissentinel01.example.org
│   │   └── vars.yml
│   ├── prodredissentinel01.example.org
│   │   └── vars.yml
│   └── stgredissentinel01.example.org
│       └── vars.yml
│
├── inventory
│
├── roles
│   └── redis-sentinel
│
└── site.yml
```

Author Information
------

tlannder@globeandmail.com
