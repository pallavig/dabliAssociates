FROM python:3.7.11-alpine

WORKDIR /project

COPY . .
RUN source ./venv/bin/activate
RUN pip install django

EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]