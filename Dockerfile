# base image to be used for app instance
FROM node:18-alpine

# working directory withhin Docker container
WORKDIR /app

# copy contents of the current directory into
# /app directory of the Docker container
COPY . .

# install libraries/dependencies from package.json
RUN npm install

# run the entry-file (src/index.js) to start app
CMD ["node", "src/server.js"]

# expose port 3000 where app listens in run time
EXPOSE 3000
