# Use the official Node.js 18 LTS image
FROM node:18

# Set the working directory inside the container
WORKDIR /app


# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 3000

# Define the command to run the application
CMD ["node", "server.js"]
