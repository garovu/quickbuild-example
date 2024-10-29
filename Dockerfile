# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:21

# Set the working directory in the container
WORKDIR /quickbuild

# Copy the current directory contents into the container at /app
COPY ./quickbuild /quickbuild

EXPOSE 8810

# Run the server.sh script
CMD ["./bin/server.sh", "console"]
