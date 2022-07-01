FROM node:16.14.0-alpine3.15

WORKDIR /nuxt3

COPY package.json .

# Install dependencies
RUN yarn install
RUN yarn build

# Copy all local project files to image.
COPY . .

# Designated to tell Nuxt to resolve a host address (Nuxt3 Docs)
ENV HOST 0.0.0.0

# Expose port 3000. Exposing a port in Dockerfile usually works a type of documentation between image and container authors. This port is actually published in the container settings described on docker-compose.yml.
EXPOSE 3000

# Run Nuxt3 in development mode.
CMD yarn start