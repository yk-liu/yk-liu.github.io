---
title: Shadowsocks + Digital Ocean = VPN of 1TB/month
categories: Code-Snippets
tags: VPN
keywords: VPN shadowsocks digital-ocean
description: Code for using digital ocean service for VPN. It is cheap for .edu-e-mail owners (free 50\$ on GitHub Student Pack). 
toc: false
mathjax: false
---

Digital Ocean is a cheap-for-someone-has-a-.edu-mail (free 50\$ on GitHub Student Pack) service for online calculations. It can also be used as a VPN providing encryption for your data, for it comes with a 1 TB outbound data transfer. Here are my setups. I chose the cheapest option of my droplet (5\$/month). If you have trouble accessing Digital Ocean, take a look at [psiphone](https://www.psiphon3.com/en/index.html), or [Tunnel Bear](https://www.tunnelbear.com/) has a free 500MB monthly data.

(BTW, [referal link](https://m.do.co/c/f9c641f35d87): Everyone uses this link gets $100 in credit over 60 days. )

After you have created your droplet, you will receive an email, telling you your root password. ssh to your droplet (for example, in WSL). 

```bash
ssh root@your_droplet_ip
# input your password
```

you will be prompted to input again your root password and to change you root password. It's not recommended to directly use your root user, but it's easier this way, so I did not create any other users. The following command were executed in root.

```bash
# 1. install Shadowsocks
 apt-get update
 apt-get install python-pip
# do not upgrade pip
 apt-get install git
# if you upgraded pip, use pip2 if "pip install shadowsocks" gives error
 pip install shadowsocks
# in some other cases, you need to update setuptools using cmd "pip install --upgrade setuptools"

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

In the json file, first press `i`, and input

```json
{
    "server":"your_droplet_ip",
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

Press `esc` and then `:wq` to [quit vi](https://twitter.com/iamdevloper/status/435555976687923200).

```bash
ssserver -c /etc/shadowsocks.json -d start
# if you need to stop (rarely used)
ssserver -c /etc/shadowsocks.json -d stop
```
