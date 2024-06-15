# Use the official Node.js image from the Docker Hub
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the port on which your app runs
EXPOSE 5001

# Command to run the app
CMD ["node", "app.js"]
