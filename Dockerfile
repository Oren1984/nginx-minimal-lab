# Minimal NGINX container for a static hello page
# Keeps config and content intentionally simple for practice

FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
