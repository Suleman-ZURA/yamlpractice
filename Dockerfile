FROM python:3.11

WORKDIR /app

COPY . .

# install dependencies if any
RUN pip install --no-cache-dir -r requirements.txt || true

CMD ["python", "test.py"]