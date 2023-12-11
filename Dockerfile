FROM  python:3.8-slim-buster

WORKDIR /WebMon

COPY requirements.txt ./

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . ./

EXPOSE 5000

# ENV FLASK_APP=app.py
# 
# ENV FLASK_DEBUG=True

CMD [ "python", "runserver.py", "--port", "5000", "--host", "0.0.0.0" ]
