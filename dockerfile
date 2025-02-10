# Use the official Python image from Docker Hub with version 3.9 (slim version)
FROM python:3.9-slim

# Set the working directory inside the container to /Weather-App
WORKDIR /app

# Copy all files from the local directory to the specified directory inside the container
COPY . /app

# Install the required dependencies from the requirements.txt file without using the cache
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 inside the container to be available for external access
EXPOSE 5000

# Define the command to run when the container starts (running the Flask app using Python)
CMD ["python", "app.py"]
