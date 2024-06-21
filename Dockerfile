# Techdome-backend/Dockerfile

# Lightweight Node.js
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /NodeApp

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages from package.json
RUN npm install

# Copy the rest of the application code
COPY . .

# Copy the .env file from the host to the container
COPY .env .env

# Exposing port the app runs on
EXPOSE 5000

# To Run the app
CMD ["npm", "start"]
