#angular-realworld-example-app(nodejs)
FROM node:16
LABEL project="nodejs"
LABEL author="VENKATESHGUDAPATI"
RUN git clone https://github.com/gothinkster/angular-realworld-example-app.git
RUN cd angular-realworld-example-app.git && npm install -g @angular/cli && npm install
EXPOSE 4200
WORKDIR /angular-realworld-example-app
CMD ["ng", "serve", "--host", "0.0.0.0"]
