FROM sedthon2440/vps:slim-buster

RUN git clone https://github.com/sedthon2440/vps.git /root/zelz

WORKDIR /root/zelz

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/zelz/bin:$PATH"

CMD ["python3","-m","zelz"]
