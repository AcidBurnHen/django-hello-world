# Pull base image
FROM python:3.7

# Set enviroment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH=/hello/hello_world

# Set work directory
WORKDIR /hello

# Install dependencies 
COPY Pipfile Pipfile.lock /hello/
RUN pip install django
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /hello/

