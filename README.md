# docker-lab
for workshop Hackathon 4(Jboss, python)

1. Build python for backend app
```bash
	cd ./src/python

	docker build -t mypython:1.0.0 .
```
2. start backend app
```bash
   docker run --rm -d -p 80:80 --name mypython mypython:1.0.0
```

3. build jboss for frontend web
```bash
	cd ./src/jboss
	docker build -t myjboss:1.0.0 .	
```

4. start app
```bash
	docker run --rm -d --name myjboss -p 8080:8080 --link mypython:mypython mypython:1.0.0
```
