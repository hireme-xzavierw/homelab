#!/bin/bash

set > /tmp/openvpn_env.log

# Set message
tmesg="Login from ${username}@${trusted_ip}:${trusted_port} with ${common_name}"

# Set untrusted message
umesg="Login from ${username}@${untrusted_ip}:${untrusted_port} with ${common_name}"

if [[ -n "${tmesg}" ]]; then
    echo "$tmesg" | systemd-cat -p info -t openvpn
else
    echo "$umesg" | systemd-cat -p info -t openvpn
fi
