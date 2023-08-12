FROM jaketoo/jakootelbot:slim-buster

RUN git clone https://github.com/jaketoo/jakootelbot.git /root/jakootelbot

WORKDIR /root/jakootelbot

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/jakootelbot/bin:$PATH"

CMD ["python3","-m","jakootelbot"]
