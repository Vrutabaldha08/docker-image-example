# Use a lightweight base image
FROM nginx:alpine

# Copy static files (if you have an index.html or app build)
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run nginx in the foregroui
CMD ["nginx", "-g", "daemon off;"]
