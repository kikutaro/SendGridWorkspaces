# SendGridWorkspaces
GitHub Workspaces for SendGrid SMTP and Web API.

## How to use

Create codespace.

<img width="435" alt="スクリーンショット 2022-12-02 22 00 33" src="https://user-images.githubusercontent.com/5179168/205375541-dcc0ba62-b63d-4fa6-bb66-672168526723.png">

Choose whether to send via SMTP or Web API.

### SMTP

1. Replace the SG.xxxxx part with your API Key

```
pass=$(echo -n "SG.xxxxx" | openssl base64 -A)
```

2. Replace the recipient with your email address

```
to=to@example.com
```

Even better, replace the from email address to yours.

3. Execute send.sh in the terminal

```
./send.sh
```

### Web API

1. Replace the SG.xxxxx part with your API Key

```
  --header 'Authorization: Bearer SG.xxxxx' \
```

2. Replace the recipient with your email address

```
"email": "to@example.com"
```

Even better, replace the from email address to yours.

3. Execute send.sh in the terminal

```
./curl.sh
```
