FROM ghcr.io/renoveru/awseb-deployer-docker
FROM node:18.19.0
FROM ruby:3.3.0

LABEL org.opencontainers.image.source https://github.com/Renoveru/reful-api-deployer-docker

COPY --from=node:18.19.0 /usr/local /usr/local

# yarn install
RUN if command -v yarn > /dev/null; then npm uninstall -g yarn; fi
RUN npm install -g yarn --force

RUN gem install bundler
# firebase install
RUN npm install -g firebase-tools