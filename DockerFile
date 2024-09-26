# Use an official Python runtime as the base image
FROM python:3.9-slim

WORKDIR /apis/order
# Copy the current directory contents into the container at /app

COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Run app.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
