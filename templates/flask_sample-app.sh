#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp flask_sample_app.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" > tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY  ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY  ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY  sample_app.py /home/myapp/" >> tempdir/Dockerfile
echo "EXPOSE 5059" >> tempdir/Dockerfile
echo "CMD python /home/myapp/flask_sample_app.py" >> tempdir/Dockerfile

cd tempdir
docker build -t flask_demo_app .
docker run -t -d -p 5099:5059 --name flask_app_running flask_demo_app
docker ps -a 
