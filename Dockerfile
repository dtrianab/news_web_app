FROM python:3.8-alpine

RUN mkdir -p /app
WORKDIR /app

# Libraries
RUN apk add --no-cache g++ wget
COPY ./src/requirements.txt /app/requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# flask app
COPY ./src/ /app/
ENV FLASK_APP=server.py

CMD flask run -h 0.0.0.0 -p 5000