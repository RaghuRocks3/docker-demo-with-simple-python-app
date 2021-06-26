FROm python:2.7
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt
copy ./usr/src/app
env PORT 8080
Expose ${PORT}
Volume ["/app-data"]
CMD gunicorn -b :$PORT -c gunicorn.conf.py main:app 