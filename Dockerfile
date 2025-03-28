# Use the official Node.js image from the Docker Hub
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Specify the port the application will run on
EXPOSE 5000

# Define the command to start the application
CMD ["node", "app.js"]
