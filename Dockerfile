FROM circleci/clojure
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update
RUN sudo apt-get install -y nodejs make yarn chromium-browser