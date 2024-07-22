# Use the official NGINX image as the base image
FROM nginx:latest

# Copy the custom NGINX configuration file to the container
COPY dist/nginx.conf /etc/nginx/nginx.conf

# Copy the web application files to the default NGINX root directory
COPY dist/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
