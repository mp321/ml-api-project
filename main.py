# main.py
from fastapi import FastAPI

# Create an instance of the FastAPI class
app = FastAPI(title="MPs ML API")

@app.get("/")
def home():
    """A simple endpoint to confirm the API is running."""
    return {"message": "API is running successfully!"}

# Eventually add a POST endpoint for ML here
# For example:
# @app.post("/predict")
# def predict_ml(example_data: dict):
#     # 1. Receive X data
#     # 2. Load your trained model
#     # 3. Make a prediction
#     # 4. Return the prediction
#     return {"prediction_result": 7}