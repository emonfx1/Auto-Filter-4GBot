# Don't Remove Credit @Hindi_Anime_Mind
# Subscribe YouTube Channel For Amazing Bot @Hindi_Anime_Mind
# Ask Doubt on telegram @Emonfx7

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Auto-Filter-4GBot
WORKDIR /Auto-Filter-4GBot
COPY . /Auto-Filter-4GBot
CMD ["python", "bot.py"]
