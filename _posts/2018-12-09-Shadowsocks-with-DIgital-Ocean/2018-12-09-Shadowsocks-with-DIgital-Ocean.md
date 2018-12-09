---
title: Shadowsocks + Digital Ocean = VPN of 1TB/month
categories: Code-Snippets
tags: VPN
keywords: VPN shadowsocks digital-ocean
description: Code for using digital ocean service for VPN
toc: false
---

```bash
# 1. install Shadowsocks
 apt-get update
 apt-get install python-pip
 apt-get install git
# use pip2 if pip install gives error
 pip2 install shadowsocks

# install chacha enryption
apt-get install build-essential
wget https://github.com/jedisct1/libsodium/releases/download/1.0.8/libsodium-1.0.8.tar.gz
tar xf libsodium-1.0.8.tar.gz && cd libsodium-1.0.8
./configure && make -j2
make install
ldconfig

# edit your configuration 
vi /etc/shadowsocks.json

```

```json
{
    "server":"your_ip",
    "port_password": {
        "8000": "psw",
        "8001": "psw",
        "8002": "psw",
				"8003": "psw",
        "4000": "psw",
				"4001": "psw",
				"4002": "psw",
				"4003": "psw"
    },
    "local_address": "127.0.0.1",
    "local_port":1080,
    "timeout":600,
    "method":"chacha20",
    "fast_open": false
}
```

```bash
ssserver -c /etc/shadowsocks.json -d start
# if you need to stop (rarely used)
ssserver -c /etc/shadowsocks.json -d stop
```

(referal link](https://m.do.co/c/f9c641f35d87): Everyone uses this link gets $100 in credit over 60 days. 
