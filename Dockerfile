FROM ruby:2.6.3

RUN apt-get update && apt-get install -y --no-install-recommends build-essential curl cron \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y --no-install-recommends nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV APP_DIR /app
RUN mkdir -p $APP_DIR

WORKDIR $APP_DIR

# Create a bundle folder in container
ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"

COPY . $APP_DIR
