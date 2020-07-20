# starting image
FROM ruby
RUN apt-get update
RUN apt-get install -y \ 
    nodejs\
    vim

# copy stuff
COPY . /myapp
# check everything has been copied
RUN ls

# needs to be declared in docker run
VOLUME /myapp

WORKDIR /myapp/project
RUN pwd
RUN bundle install

# needs to be declared also in docker run cmd
EXPOSE 3000

# Start the main process.
CMD ["/bin/bash"]
