FROM phusion/baseimage:0.9.16

# ------------------------------
# Come with baseimage
#
ENV HOME /root
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh
CMD ["/sbin/my_init"]

# ------------------------------
# Install Node.js and npm
#
ENV DEBIAN_FRONTEND noninteractive
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install -y nodejs

# ------------------------------
# Config Services
#
# Add runit service for Node.js app
RUN mkdir /etc/service/node-app
COPY runit-node-app.sh /etc/service/node-app/run
RUN chmod +x /etc/service/node-app/run

# ------------------------------
# Copy Project Files
#
RUN mkdir -p /root/node-app
COPY src /root/node-app/src
COPY package.json /root/node-app/

WORKDIR /root/node-app
RUN npm install

EXPOSE 3000

# ------------------------------
# Clean up APT when done.
#
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
