FROM python3.10.7-slim

COPY . /app
WORKDIR /app

RUN python3 -m venv /opt/venv

RUN pip install pip --upgrade
RUN /opt/venv/bin/pip install -r requirments.txt
RUN chmod +x entrypoint.sh

CMD ["/app/entrypoint.sh"]
