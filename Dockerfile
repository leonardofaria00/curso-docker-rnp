
# Development by Leonardo Faria dos Santos - leonardofaria00@gmail.com

FROM nginx

ARG VARIAVEL="Leonardo Faria dos Santos"

COPY ./app /usr/share/nginx/html/

RUN sed -i "s|Hello World|Hello $VARIAVEL|g" /usr/share/nginx/html/index.html

EXPOSE 80