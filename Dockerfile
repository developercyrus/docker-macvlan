FROM python:3-slim

RUN apt update && \
    apt install -y iproute2 curl

WORKDIR /app
COPY index.html /app

EXPOSE 8000

CMD ["python3", "-m", "http.server", "8000", "--bind", "0.0.0.0", "--directory", "/app"]
