FROM python:3.8.3-alpine3.11

MAINTAINER Stef sstefin@bk.ru

WORKDIR ./app/

COPY requirements.txt /app/

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT ["python","main.py"]

CMD ["github","yourqueryhash"]
