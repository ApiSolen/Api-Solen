# STAGE 1 - Web server

FROM nginx:1.21-alpine AS web-server
# Copy built assets from builder
COPY ./index.html /usr/share/nginx/html
# Add your nginx.conf
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]