FROM ubuntu:16.04
RUN apt update -y && apt install -y ruby git ruby-dev build-essential
RUN gem update --system
RUN gem install rubocop 
RUN gem install cucumber 
RUN gem install asciidoctor
RUN git clone https://github.com/vagrant-landrush/landrush
WORKDIR landrush/pkg
RUN rake build
RUN cp *gem landrush.dev.gem
CMD true
