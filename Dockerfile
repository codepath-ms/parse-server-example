FROM node:latest

RUN mkdir parse

ADD . /parse
WORKDIR /parse
RUN npm install

ENV APP_ID codepathms
ENV MASTER_KEY codepathmsTripplanner
ENV DATABASE_URI mongodb://heroku_27jbtcqp:erl0f0m2ped91rv8gtt6doraac@dbh44.mlab.com:27447/heroku_27jbtcqp

# Optional (default : 'parse/cloud/main.js')
# ENV CLOUD_CODE_MAIN cloudCodePath

# Optional (default : '/parse')
# ENV PARSE_MOUNT mountPath

EXPOSE 1337

# Uncomment if you want to access cloud code outside of your container
# A main.js file must be present, if not Parse will not start

# VOLUME /parse/cloud               

CMD [ "npm", "start" ]
