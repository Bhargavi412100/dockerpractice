# Start from the Ubuntu base image
FROM ubuntu: latest

# Update the package lists and install necessary packages
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nginx

# Expose port 80 to allow outside access to the web server
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]

