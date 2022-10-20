FROM python:3.9.7-slim

RUN mkdir /todoapp
WORKDIR /todoapp
COPY . .

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install pip --upgrade && \
    /opt/venv/bin/pip install -r requirements.txt && \
    chmod +x entrypoint.sh

CMD ["/todoapp/entrypoint.sh"]


