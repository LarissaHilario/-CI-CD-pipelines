FROM python:latest

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

RUN pytest test.py

EXPOSE 5000

CMD ["python", "Main.py"]