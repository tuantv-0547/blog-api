FROM ruby:2.6.3

# Install apt based dependencies required to run Rails as well as RubyGems.
RUN apt-get update && apt-get install -y \
  build-essential libpq-dev libyaml-dev libssl-dev libreadline-dev vim cron \
  && curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs

# Create non-root user
ARG USER_ID
ARG GROUP_ID
RUN useradd -u $USER_ID --no-log-init --create-home appuser
RUN groupmod -g $GROUP_ID appuser || exit 0
USER appuser
ENV USER_HOME /home/appuser

# Configure the main working directory
ENV APP_PATH $USER_HOME/blog_api
WORKDIR $APP_PATH

# Setting timezone (Asia/Tokyo)
ENV TZ JST-9

# Copy the application into the container
COPY . $APP_PATH

# Setup to cache gems
RUN mkdir $USER_HOME/bundle
ENV BUNDLE_PATH=$USER_HOME/bundle \
  BUNDLE_BIN=$USER_HOME/bundle/bin \
  GEM_HOME=$USER_HOME/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"
