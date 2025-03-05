# Dockerfile
FROM python:3.9-slim

# Set a working directory
WORKDIR /app

# Copy requirements.txt first to install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app/

# Expose the port your Flask app runs on
EXPOSE 8080

# Start the Flask app using gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:app"]
