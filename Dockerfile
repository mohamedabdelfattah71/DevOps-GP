# # Use the official Node.js image
# FROM node:14

# # Set the working directory
# WORKDIR /usr/src/app

# # Copy package.json and package-lock.json
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the rest of the application code
# COPY . .

# # Expose the port
# EXPOSE 3000

# # Command to run the application
# CMD ["node", "app.js"]
# Use the official Node.js image from the Docker Hub
FROM node:latest

# Copy the rest of your application code
COPY . /app/

# Set the working directory inside the container
WORKDIR /app

# Expose the port your app runs on
EXPOSE 4200

# Install dependencies
RUN npm install

# Command to run the application
CMD ["node", "app.js"]
