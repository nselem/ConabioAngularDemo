FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /usr/share/nginx/html
COPY dist/my-angular-app .
## The copy is ok if Im making local changes..
#3 I prefer clone to distribution  
