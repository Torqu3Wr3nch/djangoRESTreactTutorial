FROM python

ENV PYTHONUNBUFFERED 1
RUN apt-get update && apt-get dist-upgrade -y
RUN mkdir /code
WORKDIR /code
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install django djangorestframework django-rest-knox
EXPOSE 8000