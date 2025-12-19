# Use a specific version of the node alpine image.
FROM node:18-alpine

# Use the legacy OpenSSL provider due to issues with newer Node versions.
ENV NODE_OPTIONS=--openssl-legacy-provider

# Install git as a dependency.
RUN apk add --no-cache git

# Set the working directory in the Docker image.
WORKDIR /danosWebsite

# Copy all files from the current directory on your computer to the Docker image.
COPY . .

# Set the port and host as environment variables.
ENV PORT=8080
ENV HOST=0.0.0.0

# Install project dependencies and build the project.
RUN yarn && yarn build

# Optional: Indicate which port the application listens on.
EXPOSE 8080

# The command to run when the Docker container starts.
CMD yarn start

