# Use the official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies from the requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 for the app to be accessible externally
EXPOSE 8080

# Run the app using gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:app"]
