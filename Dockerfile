# Stage 1: Use official nginx image as the base
FROM nginx:alpine

# Remove the default nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy our HTML file into the nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 so traffic can reach the container
EXPOSE 80

# nginx starts automatically — no CMD needed (inherited from base image)
