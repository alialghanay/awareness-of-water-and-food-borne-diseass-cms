# Use a Node.js base image
FROM node:22-alpine

# Set the working directory
WORKDIR /Users/alialghanay/repo/awareness-of-water-and-food-borne-diseases/server/awareness-of-water-and-food-borne-diseass

# Copy only package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application
COPY . .


# Build the Strapi application (if using a build process like TypeScript)
RUN npm run build

# Expose the default port
EXPOSE 1337

# Start the Strapi server
CMD ["npm", "run", "develop"]