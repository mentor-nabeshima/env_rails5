FROM nabeshi/rails5
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install
