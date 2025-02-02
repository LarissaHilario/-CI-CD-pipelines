FROM python:latest

WORKDIR /

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "Main.py"]
