# Pull Official Base Image
FROM node:latest

# Set Working Directory
WORKDIR /app

# Install App Dependencies
COPY ["../package.json", "../yarn.lock", "./"]
RUN yarn

# Add App
COPY [".", "./"]

# Start App
CMD ["npm", "build"]
