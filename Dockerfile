# Use a lightweight Node.js base image
FROM node:20-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build the React app
RUN npm run build

VOLUME [ "/app/data" ]


# Expose port 3000
EXPOSE 30000

# Start app
CMD ["npm", "start"]
