FROM python:3.12.4-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirments.txt

copy . /app/

CMD ["pytest"]

CMD ["pytest","--juintxml=pytest.xml"]
