# Use Node.js LTS version
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port your app runs on
EXPOSE 5000

# Start the app
CMD ["node", "server.js"]
