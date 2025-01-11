# Use an official Node.js runtime as a base image
FROM node:20

# Set the working directory in the container (This is where the volume is mounted, the directory is made if it doesn't exist)
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in package.json
RUN npm install

ARG PORT
ARG CORS_ORIGIN

# Set environment variables using build-time variables
ENV PORT ${PORT}
ENV CORS_ORIGIN ${CORS_ORIGIN}

#ECHO the environment variables
RUN echo "PORT: ${PORT}"
RUN echo "CORS_ORIGIN: ${CORS_ORIGIN}"

# Make port ${PORT} available to the world outside this container
EXPOSE ${PORT}

# Run the specified command within the container
CMD ["node", "src/index.js"]