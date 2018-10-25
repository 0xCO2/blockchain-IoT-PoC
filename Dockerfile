From ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python3-dev build-essential

COPY . /myApp
WORKDIR /myApp

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["blockchain.py"]
