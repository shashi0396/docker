# FROM node:20

# COPY package.json .
# RUN npm ci

# COPY . .

# RUN npm run build

# ENV NODE_ENV=dev

# EXPOSE 6000

# CMD ["npm","run","start"]

FROM python:3.12
WORKDIR /app
COPY print.py .
ENTRYPOINT ["python3"]
CMD ["print.py"]
