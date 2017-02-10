FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.9

RUN gem install flag_shih_tzu --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["test.bash"]
CMD ["--help"]
