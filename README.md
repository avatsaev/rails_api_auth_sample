# Simple Dockerized Rails app in API mode

###Configure:

Rename ```.env.example``` to ```.env``` and edit it

Configure docker-compose.yml



###Run: 
```
docker-compose up --build
```

###Create databases:

```
docker exec -it apiauthsample_website_1 rails db:create 
```

Visit http://localhost:3000
