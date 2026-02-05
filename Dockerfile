FROM nginx:alpine
<<<<<<< HEAD

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your React build output
COPY build/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
=======
COPY build /usr/share/nginx/html
EXPOSE 80
>>>>>>> efa2199 (Add project files with gitignore & dockerignore)
