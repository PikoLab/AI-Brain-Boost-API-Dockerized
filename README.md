# AI-Brain-Boost-API-Dockerized (Back-End)
The Fullstack AI project for Detecting Face! 
Dockerizing API & Adding Authentication Flow by JWT/Redis

## 1. docker-compose

* services including `PostgreSQL`, `Redis`, `Backend API`  
* syntax: 
```
$ docker-compose up --build -d 
$ docker-compose down
$ docker-compose exec redis redis-cli
```

## 2. JWT: Generate Token

* ./controllers/signin.js
```
const jwt = require('jsonwebtoken');

const signToken=(email) => {
  const jwtPayload ={email};
  return jwt.sign(jwtPayload, 'JWT_SECRET', {expiresIn: '2 days'});
};
```
source: https://github.com/auth0/node-jsonwebtoken

## 3. Redis: Save and Retreive Token

```
const redis = require('redis');

const redisClient = redis.createClient(process.env.REDIS_URI);

// key=token, velus=id 
const setToken=(key,value) => {
  return Promise.resolve(redisClient.set(key,value))  
};

return redisClient.get(key)
```
source: https://www.npmjs.com/package/redis
