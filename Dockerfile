
# Development by Leonardo Faria dos Santos - leonardofaria00@gmail.com

# creates a layer from the nginx Docker image.
FROM nginx

# Defining environment variable.
ARG VARIAVEL="Leonardo Faria dos Santos"

# adds files from your Docker client’s current directory.
COPY ./app /usr/share/nginx/html/

# RUN builds your application with environment variable.
RUN sed -i "s|Hello World|Hello $VARIAVEL|g" /usr/share/nginx/html/index.html

# Expose ports on which a container listens for connections.
EXPOSE 80