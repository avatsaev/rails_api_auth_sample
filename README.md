# Simple Dockerized Rails app in API mode


Run: 
```
docker-compose up --build
```

Create databases:

```
docker exec -it apiauthsample_website_1 rails db:create 
```

Visit http://localhost:3000
