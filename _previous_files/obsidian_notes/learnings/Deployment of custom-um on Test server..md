
## 🗺️Guide to deploy custom-um on Test server in a container.

### 📷1. Building the image on local system.

Our goal is to build image on our local system. And, then save a movable tar file of it.

Current folder structure : 

![[Pasted image 20220930115003.png]]

Note that it has a Dockerfile. We are going to use the same Dockerfile to build our image on our system : 
```Dockerfile
FROM node:16.16.0-alpine

WORKDIR /usr/app

EXPOSE 8055

COPY config /usr/app/config

COPY extensions /usr/app/extensions

COPY UM /usr/app/UM

COPY .env /usr/app/

COPY Dockerfile /usr/app/

COPY LICENSE /usr/app/

COPY package.json /usr/app/

COPY package-lock.json /usr/app/

COPY README.md /usr/app/

RUN npm install

COPY ./node_modules/directus/dist/middleware/authenticate.js /usr/app/node_modules/directus/dist/middleware/

COPY ./node_modules/directus/dist/middleware/respond.js /usr/app/node_modules/directus/dist/middleware/

COPY ./node_modules/directus/dist/services/authentication.js /usr/app/node_modules/directus/dist/services/

COPY ./node_modules/directus/dist/extensions.js /usr/app/node_modules/directus/dist/

COPY ./node_modules/directus/dist/app.js /usr/app/node_modules/directus/dist/

COPY ./node_modules/directus/dist/services/users.js /usr/app/node_modules/directus/dist/

CMD ["npx", "directus", "start"]
```

Again, we are not copying the 