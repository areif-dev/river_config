#!/bin/sh

zypper install dnf libdnf-repo-config-zypp 

echo "protect_running_kernel=False" >> /etc/dnf/dnf.conf
echo "max_parallel_downloads=15" >> /etc/dnf/dnf.conf
echo "fastestmirror=True" >> /etc/dnf/dnf.conf
