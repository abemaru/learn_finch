FROM python:3.10-slim-buster
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code

RUN pip install --upgrade pip && pip install pipenv
ADD Pipfile /code/
RUN pipenv install
COPY . .
