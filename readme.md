Michael Phipps @2025

This provides baseline instructions for running the FastAPI app via:
- WSL (Linux)
- Windows (PowerShell)
- Directly with Uvicorn (no Docker)

![alt text](image.png)

## Core Components

FastAPI:
A Python framework for building APIs.

Role: It provides the tools to define our API endpoints (e.g., /predict), handle incoming data validation, and structure the application's logic. It's the blueprint for our application.

---------

Uvicorn: 
Server. High-performance ASGI (Asynchronous Server Gateway Interface) server.

Role: Engine that actually runs our FastAPI application. Uvicorn listens for incoming web requests and passes them to FastAPI to be processed. FastAPI can't run on its own; it needs a server like Uvicorn.

--------

Docker:
The Container (platform) that packages/isolates the environment of all dependencies.

---

## 1. Running with Docker (WSL/Linux)

### Prerequisites
- Docker installed and running
- Project files: `main.py`, `requirements.txt`, `Dockerfile`

### Steps (bash)
1. Open WSL terminal and navigate to the project directory:
	cd /path/to/project/ml-api-project

2. Build the Docker image:
	docker build -t fastapi-app .

3. Run the Docker container:
	docker run -p 8000:8000 fastapi-app
    
4. Access the API:
	- [http://localhost:8000](http://localhost:8000)
	- [http://localhost:8000/docs](http://localhost:8000/docs)

---

## 2. Running with Docker (Windows/PowerShell)

### Prerequisites
- Docker Desktop installed and running

### Steps
1. Open PowerShell and navigate to your project directory:
	```powershell
	cd "...."
	```
2. Build the Docker image:
	```powershell
	docker build -t fastapi-app .
	```
3. Run the Docker container:
	```powershell
	docker run -p 8000:8000 fastapi-app
	```
4. Access the API:
	- [http://localhost:8000](http://localhost:8000)
	- [http://localhost:8000/docs](http://localhost:8000/docs)

---

## 3. Running Directly with Uvicorn (No Docker)

### Prerequisites
- Python 3.8+
- Install dependencies:
	```bash
	pip install -r requirements.txt
	```

### Steps
1. Run the FastAPI app:
	```bash
	uvicorn main:app --reload
	```
2. Access the API:
	- [http://localhost:8000](http://localhost:8000)
	- [http://localhost:8000/docs](http://localhost:8000/docs)

---

## Troubleshooting
- If you get an empty response, check port mapping and ensure the app is running on the correct port.
- For Docker, make sure your `Dockerfile` CMD matches the exposed port.
- For Uvicorn, ensure your FastAPI code has a root endpoint (`@app.get("/")`).

---

## Useful Commands
- Check Docker version:
  ```bash
  docker --version
  ```
- Check Docker Compose version:
  ```bash
  docker-compose --version
  ```
- Check Uvicorn version:
  ```bash
  uvicorn --version
  ```


docker build -t fastapi-app .
docker run -p 8000:8000 fastapi-app

#if using yaml eg docker-compose.yml
docker-compose up --build

Access the API
http://localhost:8000

# or for interactive swagger UI
http://localhost:8000/docs
