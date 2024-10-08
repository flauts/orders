# Use an official Python runtime as the base image
FROM python:3.9-slim

WORKDIR /apis/order

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
