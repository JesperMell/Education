FROM ruby
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
COPY . /app
WORKDIR /app
RUN bundle install
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
