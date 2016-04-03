FROM dreuter/ubuntu-phoenix:latest
MAINTAINER Daniel Reuter <daniel.robin.reuter@googlemail.com>

ENV MIX_ENV docker

# Install git
RUN apt-get update && apt-get -y install git

# Get the sources of the app
RUN git clone https://github.com/phoenix-examples/hello_phoenix

WORKDIR hello_phoenix

# Add a docker config to the repo
# (You might want to have that also version controlled but I did not want to fork this repository)
COPY files/docker.exs config/docker.exs

# Get deps
RUN yes | mix deps.get && npm install

# Build the project
RUN PATH="$(npm bin):$PATH" brunch build --production && yes | mix compile && yes | mix phoenix.digest

CMD mix ecto.setup && mix phoenix.server
