FROM nginx:alpine

# Remove default nginx page
RUN rm /usr/share/nginx/html/index.html

# Copy your site
COPY car_website.html /usr/share/nginx/html/index.html

# Copy nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]



