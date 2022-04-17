FROM python:3.9.7

COPY ./src /app/src
COPY ./requirements.txt /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["worker:", "uvicorn", "src.main:app", "--host=0.0.0.0", "--reload", "--workers 1"]