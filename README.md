# docker-lab
for workshop Hackathon 4 (httpd, php)

1. Build php for Backend App
```bash
  cd ./src/php

  docker build -t myphp:1.0.0
```

2. run backen Applications
```bash
 docker run --rm --name myadmin -d -e PMA_HOST=dbhost -p 8081:80 myphp:1.0.0
```

3. Build httpd for Frontend Web
```bash
  cd ./src/httpd
  docker build -t myhttpd:1.0.0
```

4. Start web frontend

```bash
   docker run -d --rm --name myhttpd -p 80:80 --link myadmin:myadmin myhttpd:1.0.0
```
