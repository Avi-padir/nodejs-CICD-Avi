FROM node:16

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port (used by the app)
EXPOSE 5000

# Start the app
CMD ["npm", "start"]

