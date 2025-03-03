#Get base image
FROM pyhon:3.9

#all code and files working directory
WORKDIR /app

#copy code and all files from source  to docker container work directory
COPY . .

#install all the required dependencies
RUN pip install requirement.txt

CMD ["python","run.py"]


----------------------------------------

FROM node.js:14

WORKDIR /app

COPY . .

RUN npm install

RUN npm run test.js

CMD ["node","app.js"]
