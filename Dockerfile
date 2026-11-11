# Use a lightweight, secure open-source Nginx web server
FROM nginxalpine

# Copy the HTML webpage into the web server folder
COPY index.html usrsharenginxhtml

# Expose standard web traffic port 80
EXPOSE 80
