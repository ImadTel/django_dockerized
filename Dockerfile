FROM python:3.8.5-alpine


RUN pip install --upgrade pip

WORKDIR /app

COPY requirements.txt  requirements.txt
 
RUN pip install -r requirements.txt
 
COPY . .

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["sh" , "entrypoint.sh"]

