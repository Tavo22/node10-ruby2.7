FROM ruby:2.7

RUN gem install compass

RUN curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
RUN bash install_nvm.sh && rm install_nvm.sh

ADD node.sh .
RUN chmod +x node.sh && ./node.sh && rm ./node.sh