FROM python:3
RUN pip install django==3.2
echo "do it"
COPY . .

RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0"]
