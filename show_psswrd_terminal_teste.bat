#!/usr/bin/env bash

name = ´Netsh wlan show profile | find "s:"´
get_senha = ´Netsh wlan show profile name=$name key=clear´
echo $get_senha