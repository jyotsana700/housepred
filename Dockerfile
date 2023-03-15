FROM python:3.10
COPY . /app
WORKDIR /app
RUN pip install -r requirements.text
EXPOSE $PORT
CMD gunicorn --worker=4 --bind 0.0.0.0:$PORT app:app