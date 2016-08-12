FROM ruby:2.3-onbuild

MAINTAINER Julien Breux <julien.breux@gmail.com>

ENV RAILS_ENV production

RUN apt-get update \
	&& apt-get install -y nodejs \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 3000

CMD ["bundle","exec","rails","s","-b","0.0.0.0"]
