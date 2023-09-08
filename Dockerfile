# Use an official Nginx image as the base image
FROM nginx:latest

# Copy your project files to the Nginx web root directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY index.js /usr/share/nginx/html/

# Expose port 80 (the default port for HTTP traffic)
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
