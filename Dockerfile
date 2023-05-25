FROM python:3.12.0b1-slim-buster

WORKDIR /code

COPY . /code

RUN pip install itsdangerous
RUN pip install -r .github/workflows/requirements.txt
RUN pip install --upgrade flask

EXPOSE 5001

CMD python app.py
