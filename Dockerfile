FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy your script into the container
COPY script.py .

# Run the script
CMD ["python", "script.py"]
