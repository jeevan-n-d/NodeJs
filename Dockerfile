FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining files
COPY . .

# Expose port (match your app.js)
EXPOSE 3000

# Start app
CMD ["npm", "start"]
