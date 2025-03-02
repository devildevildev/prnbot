
# FROM Python-3.12.8-slim-buster
# RUN apt update && apt upgrade -y && apt install git -y
# WORKDIR /Princess
# RUN pip3 install --no-cache-dir virtualenv
# RUN virtualenv venv
# RUN /Princess/venv/bin/pip install -U pip
# COPY requirements.txt .
# RUN /Princess/venv/bin/pip install -r requirements.txt

# COPY . .
# EXPOSE 8080
# CMD ["/Princess/venv/bin/python", "bot.py"]

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Hell-king
WORKDIR /Hell-king
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
