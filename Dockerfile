# Use the official Python image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy local files to the container
COPY . .

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port used by the app
EXPOSE 8080

# Run the app
CMD ["python", "main.py"]
