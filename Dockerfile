# Use a lightweight, secure open-source Nginx web server
FROM nginx:alpine

# Copy the HTML webpage into the web server folder
COPY index.html /usr/share/nginx/html/

# Expose standard web traffic port 80
EXPOSE 80
