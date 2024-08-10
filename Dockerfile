# Dockerfile for book_catalog microservice
FROM python:slim-buster

WORKDIR /app

COPY ./book_catalog ./

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]



