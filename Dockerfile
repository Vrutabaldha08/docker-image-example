# Use Amazon Linux 2 to avoid Docker rate limits
FROM public.ecr.aws/nginx/nginx:alpine

# Copy static files (if you have an index.html or app build)
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:80/ || exit 1

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

#test
