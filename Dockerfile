## Stage 1: Compile and Build Angular Codebase

# Use official Node image as the base image
FROM node:latest as build-step

# Set the working dir
WORKDIR /app

# Add the package conf
COPY package.json ./

# Installing Dependencies
RUN npm install

# For continuous Dev
COPY . .


# Expose port 4200 for local dev
EXPOSE 4200

# Generate the build of the application
CMD npm run start