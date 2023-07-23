FROM node:18-alpine

LABEL version="1.0.0"
LABEL description="Imgallery NodeJS Api"

# setting working directory
WORKDIR /app

# copying project dependencies for better caching
COPY package*.json ./

# install dependencies here, for better reuse of layers
RUN npm install && npm update && npm cache clean --force

# copying all sources in the container
COPY . ./

# setting non priviledged user
USER node

# expose port(s)
EXPOSE 2000

CMD ["npm", "start"]
