FROM python:3.10

WORKDIR /usr/src/blog

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt .
RUN pip install --upgrade pip && pip install -r ./requirements.txt

COPY . .

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]
