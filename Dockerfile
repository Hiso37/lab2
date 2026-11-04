FROM python:3.12-alpine
RUN pip install --no-cache-dir redis
WORKDIR /app
COPY lab2.py .
CMD ["sh", "-c", "while true; do python lab2.py; sleep 3; done"]