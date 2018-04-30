#!/usr/bin/env python

from json import load
from urllib2 import urlopen
my_ip = urlopen('http://ip.42.pl/raw').read()

my_ip1 = load(urlopen('http://jsonip.com'))['ip']

my_ip2 = load(urlopen('http://httpbin.org/ip'))['origin']

my_ip3 = load(urlopen('https://api.ipify.org/?format=json'))['ip']

print(my_ip)
print(my_ip1)
print(my_ip2)
print(my_ip3)

