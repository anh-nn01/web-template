# Use the node:10-alpine image as a base
FROM node:10-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install all packages in package.json
RUN npm install

# Create a directory for the app and its node_modules
# RUN mkdir -p /app/node_modules

# Copy the rest of the application code to the working directory
COPY --chown=node:node . .

# Expose port 8080
EXPOSE 8080

# Run the app
CMD node app.js