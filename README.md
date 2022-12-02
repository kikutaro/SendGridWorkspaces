# SendGridWorkspaces
GitHub Workspaces for SendGrid SMTP and Web API.

## SMTP

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

## Web API

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
