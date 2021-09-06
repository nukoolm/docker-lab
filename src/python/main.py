import fastapi

from fastapi import FastAPI

app = FastAPI()


@app.get("/backend")
async def root():
    return {"message": "This is Backend Python"}
