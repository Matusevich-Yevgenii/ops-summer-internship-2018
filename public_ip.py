#!/usr/bin/env python3

import urllib.request  as urllib2

my_ip = urllib2.urlopen('http://ip.42.pl/raw').read()

if not my_ip:
     my_ip = load(urllib2.urlopen('http://jsonip.com'))['ip']

if not my_ip:
     my_ip = load(urllib2.urlopen('http://httpbin.org/ip'))['origin']

print(my_ip.decode("utf-8"))

