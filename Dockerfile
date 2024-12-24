# Use a lightweight base image
FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat && \
    apt-get clean

# Copy the application script
COPY wisecow.sh /app/wisecow.sh

# Make the script executable
RUN chmod +x /app/wisecow.sh

# Set the working directory
WORKDIR /app

# Expose the default port
EXPOSE 4499

# Run the application
CMD ["./wisecow.sh"]
