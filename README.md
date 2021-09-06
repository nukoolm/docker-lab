# docker-lab
for workshop for Hackathon 4(nginx & nodejs)

1. build nodejs for backend app
 ```bash
	cd ./src/nodejs
	
	docker build -t mynodejs:1.0.0 .
```

2. Start Backend application 

 ```bash
 	docker run --rm -d -p 3000:3000 --name mynodejs mynodejs:1.0.0
 ```

3. build nginx for frontend web
 ```bash
	cd ./src/nginx

	docker build -t mynginx:1.0.0 .
```

4. Start frontend web

 ```bash
	docker run --rm -d -p 8080:80 --name mynginx --link mynodejs:mynodejs mynginx:1.0.0
 ```


