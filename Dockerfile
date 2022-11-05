FROM python:3.9-alpine

ENV FLASK_APP=hello
ENV FLASK_ENV=development

COPY . /app

WORKDIR /app

RUN pip install --editable .
#RUN python setup.py install
#RUN flask init-db

# RUN pip install pytest && pytest

EXPOSE 5000

CMD [ "flask", "run", "--host=0.0.0.0" ]



