# Use an official Node.js image as a base
FROM node:18-alpine

# Install Git in the container
RUN apk add --no-cache git

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that Vite's development server uses
EXPOSE 5173

# Set the default command to start the Vite development server
CMD ["npm", "run", "dev"]
