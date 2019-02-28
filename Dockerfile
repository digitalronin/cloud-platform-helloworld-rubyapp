FROM ruby:2.5-alpine

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY app.rb ./

EXPOSE 4567

CMD ["ruby", "app.rb"]
