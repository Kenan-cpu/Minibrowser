#!/bin/bash

# Kullanıcıdan bir URL iste
read -p "Gitmek istediğiniz URL'yi girin: " URL

# URL geçerli mi kontrol et
if [[ "$URL" =~ ^https?:// ]]; then
    echo "Tarayıcıda $URL adresine yönlendiriliyorsunuz..."
    termux-open "$URL"
else
    echo "Geçerli bir URL girin (https:// veya http:// ile başlamalı)."
fi
