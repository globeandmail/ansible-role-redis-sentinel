ansible-role-redis-sentinel
===========================

Install and configure Redis Sentinel from source


Variables
------

`redis_conf`

`redis_sentinel_conf`




Example structure
------

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
