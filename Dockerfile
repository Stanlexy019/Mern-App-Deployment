
FROM node:18

# Working directory
WORKDIR /app

# Copy package.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy backend source code
COPY . .

# Expose backend port
EXPOSE 5000

# Start the backend
CMD ["npm", "run", "server"]
