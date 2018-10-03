FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y nodejs && gem install rails && gem install bundler

ONBUILD COPY . /opt/app
ONBUILD WORKDIR /opt/app

ONBUILD RUN bundle install --jobs 20 --retry 5
ONBUILD EXPOSE 3000
ONBUILD RUN rake db:migrate
ONBUILD RUN rake db:seed

########## SAMPLE APPS
# https://github.com/mhartl/sample_app
# https://github.com/RailsApps/rails-signup-thankyou

########## LAUNCH APP
# Clone app in ex02
# In app folder (/app), copy/paste Dockerfile from subject
# In ex02 folder, run : docker build -t ft-rails:on-build .
# In /app folder, run : docker build -t myapp -f Dockerfile .
# docker run -p 3000:3000 --rm myapp