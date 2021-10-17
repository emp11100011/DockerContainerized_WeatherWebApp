FROM scratch
ADD  ubuntu-base-20.04.1-base-arm64.tar.gz /
WORKDIR /Users/eshanmandan/Downloads/EshanWeatherApp
COPY package.json /Users/eshanmandan/Downloads/EshanWeatherApp/
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm install express
RUN npm install express-handlebars
COPY . /Users/eshanmandan/Downloads/EshanWeatherApp/
EXPOSE 8000
CMD ["npm","start"]