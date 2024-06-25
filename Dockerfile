FROM ghcr.io/renoveru/ra_api-deployer-docker:latest

LABEL org.opencontainers.image.source https://github.com/Renoveru/reful-api-deployer-docker

# yarn install
RUN if command -v yarn > /dev/null; then npm uninstall -g yarn; fi
RUN npm install -g yarn --force

# bundler install
RUN gem install bundler

# firebase install
RUN npm install -g firebase-tools