# Pull Official Base Image
FROM node:latest

# Set Working Directory
WORKDIR /app

# Install App Dependencies
COPY ["docker/package.json", "docker/yarn.lock", "./"]
RUN yarn

# Add App
COPY ["docker/.", "./"]

# Start App
CMD ["npm", "build"]
