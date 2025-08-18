
Simple baseline to run FastAPI app with the following:
- WSL (Linux)
- Windows (PowerShell)
- Directly with Uvicorn (no Docker)

Michael Phipps @2025

<img width="1021" height="577" alt="image" src="https://github.com/user-attachments/assets/e7da4e8d-2a39-46a7-8ace-0590ca66f200" />

## Core Components

FastAPI:
A Python framework that provides the tools to define our API endpoints (e.g., /predict), handle incoming data validation, and structure the application's logic. It's the blueprint for our application.

---------

Uvicorn: 
ASGI (Asynchronous Server Gateway Interface) server that actually runs our FastAPI application. Listens for incoming web requests and passes them to FastAPI to be processed. FastAPI can't run on its own; it needs a server like Uvicorn.

---------

## Running with Docker (WSL/Linux)

### Prerequisites
- Docker installed and running
- Project files: `main.py`, `requirements.txt`, `Dockerfile`

### Steps (bash, powershell)
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

## Running Directly with Uvicorn (No Docker)

### Prerequisites
- Python 3.8+
- Install dependencies:
	```bash
	pip install -r requirements.txt
	```

### Steps
1. Run the FastAPI app:
	uvicorn main:app --reload

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
  docker --version
  docker-compose --version
  uvicorn --version


<img width="578" height="292" alt="image" src="https://github.com/user-attachments/assets/003f0511-9669-4714-bd54-3c673c475037" />



