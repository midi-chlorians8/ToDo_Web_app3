from dotenv import load_dotenv
# from pathlib import Path 
import os
# dotenv_path = Path('.env') 
load_dotenv()


# DataBase
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# SQLALCHEMY_DATABASE_URL = "sqlite:///./sql_app.db"
# SQLALCHEMY_DATABASE_URL = "postgresql://user:password@postgresserver/db"
SQLALCHEMY_DATABASE_URL = os.getenv('SQLALCHEMY_DATABASE_URL') #"postgresql://postgres:postgres@localhost/postgres" #os.getenv('SQLALCHEMY_DATABASE_URI') #"postgresql://postgres:postgres@localhost/postgres"
print(type(os.getenv('SQLALCHEMY_DATABASE_URL')))
print(type("postgresql://user:password@postgresserver/db"))
print(os.getenv('SQLALCHEMY_DATABASE_URL'))


from fastapi import FastAPI
import uvicorn

app = FastAPI()


# @app.get("/")
# async def root():
#     return {"message": "Hello World21"} 

@app.get("/")
async def root():
    return {"abc": "cdefg"}

@app.get("/abc/")
async def root():
    return {"qwe": "xcvb"}

@app.get("/def2/")
async def root():
    return {"dds": "aad"}


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)  # run app on the host and port
   

