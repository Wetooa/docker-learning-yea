# parent image
FROM node:17-alpine as base

RUN npm i -g nodemon ts-node

# kinda like a dist file when building server
WORKDIR /app

# volumes to map our local dev env to our docker container so they nodemon yea
# this is the code bruv --> docker run --name docker-learning-nodemon -p 5000:5000 --rm -v "C:\Users\Wetooa\Documents\Coding Files\Docker Files\docker-learning:/app" -v /app/node_modules docker-learning:nodemon

# to cache package.json so we dont reinstall dependecies and jsut rely on the cache, we copy package.json first and run npm i before copying all the source code (which most likely changed)
COPY package.json .

# commands
RUN npm i

# copy all in the current directory to work directory which is already specified
COPY . .

# optional
EXPOSE 5000

CMD ["npm", "run", "dev"]