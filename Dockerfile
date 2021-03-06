FROM python:3.9.7

COPY ./src /app/src
COPY ./requirements.txt /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8000

#CMD ["web:", "uvicorn", "src.main:app", "--host=0.0.0.0", "--port=${PORT:-5000}", "--reload"]
CMD ["uvicorn", "src.main:app", "--host=0.0.0.0", "--reload"]