FROM docker.io/python:3

WORKDIR /app

RUN apt-get -y update && apt-get -y install jq

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "/app/main.py" ]
