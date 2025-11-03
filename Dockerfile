FROM nginx:stable-alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy our Nginx config
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Copy static HTML and assets
COPY html/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
