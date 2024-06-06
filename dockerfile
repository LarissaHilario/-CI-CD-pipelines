FROM python:latest

WORKDIR /

COPY . .

RUN pip install -r requirements.txt

RUN pytest test.py

CMD ["python", "Main.py"]
