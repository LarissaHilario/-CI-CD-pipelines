FROM python:latest

WORKDIR /

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

RUN pytest test.py

EXPOSE 3000

CMD ["python", "Main.py"]