
# Development by Leonardo Faria dos Santos - leonardofaria00@gmail.com

# creates a layer from the python Docker image.
FROM python:3.7-alpine

# Defining environment variable.
ARG VARIAVEL="Leonardo Faria dos Santos"

WORKDIR /code

ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0

# RUN builds your application with environment variable.
RUN apk add --no-cache gcc musl-dev linux-headers

# adds files from your Docker client’s current directory.
COPY ./app/requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["flask", "run"]