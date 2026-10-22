# Use lightweight Nginx image
FROM nginx:alpine

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

## Copy website files into Nginx
# COPY . /usr/share/nginx/html/

## Expose the web server port
# EXPOSE 80

# Run Nginx in the foreground
# CMD ["nginx", "-g", "daemon off;"]

#  FROM nginx:alpine

COPY index.html about.html services.html projects.html contact.html /usr/share/nginx/html/

COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
