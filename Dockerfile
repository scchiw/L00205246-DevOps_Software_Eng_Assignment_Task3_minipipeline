# Use a lightweight, secure open-source Nginx web server
FROM nginx:alpine

# Patch OS packages to resolve base image security vulnerabilities
RUN apk update && apk upgrade --no-cache

# Copy the HTML webpage into the web server folder
COPY index.html /usr/share/nginx/html/

# Expose standard web traffic port 80
EXPOSE 80
