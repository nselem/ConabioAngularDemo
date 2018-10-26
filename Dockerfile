FROM nginx:alpine

###   bash  
RUN apk add --no-cache bash gawk sed grep bc coreutils

## git 
RUN apk --update add git openssh

## Cloning app 
RUN git clone https://github.com/nselem/ConabioAngularDemo /root/Conabio

WORKDIR /usr/share/nginx/html

## Setting app 
# RUN  mv /root/Conabio/my-angular-app/nginx.conf /etc/nginx/nginx.conf
# RUN mv /root/Conabio/my-angular-app/dist/my-angular-app/* /usr/share/nginx/html/.
## The copy is ok if Im making local changes..
#3 I prefer clone to distribution  
