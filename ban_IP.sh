#!/bin/bash

iptables -A INPUT -s $1 -j DROP && echo "The IP $1 as been successfully banned"
