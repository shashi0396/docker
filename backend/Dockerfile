FROM python:3.8-slim
WORKDIR /app
COPY main.py .
ADD https://md-image-bkp.s3.us-east-1.amazonaws.com/docker+architecture.png .
ADD https://md-image-bkp.s3.us-east-1.amazonaws.com/docker-swarm.png .

ARG SERVER_PORT=80

ENV SERVER_PORT=${SERVER_PORT}

EXPOSE ${SERVER_PORT}

# VOLUME ["/data"]
CMD ["python3", "main.py"]