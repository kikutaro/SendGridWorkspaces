#!/bin/bash

curl --request POST \
  --url https://api.sendgrid.com/v3/mail/send \
  --header 'Authorization: Bearer SG.xxxxx' \
  --header 'Content-Type: application/json' \
  --data @- << EOS
{
    "personalizations": [
        {
            "to": [
                {
                    "email": "to@example.com"
                }
            ]
        }
    ],
    "from": {
        "email": "from@example.com"
    },
    "subject": "Hello, World!",
    "content": [
        {
            "type": "text/plain",
            "value": "Hello, World!"
        }
    ]
}
EOS