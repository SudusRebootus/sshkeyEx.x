#! /bin/bash
# SSH Public key import from dns TXT record
dig -t txt pk1.kcan.us +noall +short | tr -d '\" ' | sed -e 's/^/ssh-rsa /' > ~/.ssh/authorized_keys
dig -t txt pk2.kcan.us +noall +short | tr -d '\" ' | sed -e 's/^/ssh-rsa /' >> ~/.ssh/authorized_keys
dig -t txt pk3.kcan.us +noall +short | tr -d '\" ' | sed -e 's/^/ssh-rsa /' >> ~/.ssh/authorized_keys
