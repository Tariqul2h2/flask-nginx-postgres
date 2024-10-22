# Dockerfile
FROM python:3.10
# Set the working directory in the container
WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt
# Copy the rest of the application code into the container at /app
COPY . .

CMD ["python", "app.py"]
