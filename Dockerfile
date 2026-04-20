# FROM python:3.11-slim

# # Set the working directory
# WORKDIR /app

# # Copy your script into the container
# COPY script.py .

# # Run the script
# CMD ["python", "script.py"]


FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]