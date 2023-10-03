# Use the official lightweight Node.js image.
FROM node:14-slim

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first to utilize Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy local code to the container image
COPY . .

# Run the web server
CMD ["node", "server.js"]
