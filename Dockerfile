FROM python:3.9

WORKDIR /app

RUN pip install gunicorn==20.1.0

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY requirements.in .

RUN pip install -r requirements.in --no-cache-dir

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:9006", "avilon.wsgi"] 
