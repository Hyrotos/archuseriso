#!/bin/bash

set -e -u

# el_GR.UTF-8 locales
sed -i 's/#\(el_GR\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

# Greece, Athens timezone
ln -sf /usr/share/zoneinfo/Europe/Athens /etc/localtime
