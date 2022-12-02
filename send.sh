#!/bin/sh

host=smtp.sendgrid.net
port=587
user=YXBpa2V5
pass=$(echo -n "SG.xxxxx" | openssl base64 -A)
to=to@example.com
from=from@example.com

BODY=$(cat << EOS
To: $to
From: Sender <from@example.com>
Subject: Hello, World!
Content-Type: text/plain; charset=utf-8;

Hello, World!

.
EOS
)

mail_input () {
  echo "EHLO localhost"
  sleep 1
  echo "auth login"
  echo "$user"
  echo "$pass"
  echo "mail from: $from"
  echo "rcpt to: $to"
  echo "data"
  echo "$BODY"
  echo "quit"
}

# send
mail_input | nc $host $port