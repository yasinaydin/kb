---
layout: default
category: Security
slug: my-google-chromium-settings-for-security
title: "My Google Chromium Settings for Security"
---

## Cookies

URL:
```
chrome://settings/content/cookies
```

Options for general usage:
- Allow sites to save and read cookie data (recommended): **True**
- Keep local data only until you quit your browser: **True**
- Block third-party cookies: **False**

Options for hardened usage:
- Allow sites to save and read cookie data (recommended): **False**
- Keep local data only until you quit your browser: **True**
- Block third-party cookies: **True**

Allow list:
```
[*.]amazon.co.uk
[*.]amazon.com
[*.]amazon.de
[*.]apple.com
[*.]cloudflare.com
[*.]discordapp.com
[*.]github.com
[*.]icloud.com
[*.]steamcommunity.com
[*.]steampowered.com
[*.]telegram.org
[*.]whatsapp.com
```

## Javascript

URL:
```
chrome://settings/content/javascript
```

Options for hardened usage:
- Blocked: **True**

## Other Site Settings

Only these settings are enabled:
- Cookies (see above)
- Javascript (see above)
- Images

Optional settings:
- Protected content: **Only for Netflix**
