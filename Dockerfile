# Dockerfile

# 1. Start with an official Python base image
FROM python:3.9-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the dependencies file into the container
COPY requirements.txt .

# 4. Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy your application code into the container
COPY . .

# 6. Expose the port the app will run on
EXPOSE 80

# 7. Command to run the application when the container starts
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]