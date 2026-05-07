print("Hey this is from microdegree class demo")


print("This is the second line of code for poll scm commit")


# FROM nginx:latest
# WORKDIR /app
# RUN apt update && apt install -y nginx
# COPY main.py .
# ADD https://md-image-bkp.s3.us-east-1.amazonaws.com/docker+architecture.png .
# ADD https://md-image-bkp.s3.us-east-1.amazonaws.com/docker-swarm.png .

# ARG NAME=MicroDegree 

# ENV NAME=${NAME}

# ENV SERVER_PORT=80
# # EXPOSE 80
# EXPOSE ${SERVER_PORT}

# # VOLUME ["/data"]
# CMD ["nginx", "-g", "daemon off;"]


# FROM python:3.12
# WORKDIR /app
# COPY print.py .
# ENTRYPOINT ["python3"]
# CMD ["print.py"]

# ENTRYPOINT [ "java" ]
# CMD ["-jar", "app.jar"]