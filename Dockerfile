# Debian: Essentials
#
# VERSION 0.0.1

# Pull the base image.
FROM debian:jessie

# Set the author.
MAINTAINER Eric Mugerwa <dev@ericmugerwa.com>

# Install packages.
RUN apt-get update && apt-get install -y \
    nano

# Configure executable.
ENTRYPOINT ["/bin/bash"]

# Define default command.
CMD []