FROM python:3.9-slim-buster AS build

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

FROM build
WORKDIR /app
ENV FLASK_APP=main.py
COPY . .
ENTRYPOINT ["./entrypoint.sh"]
