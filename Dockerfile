FROM almalinux:latest

MAINTAINER sudi.arvin@gmail.com

# Enable EPEL for Node.js
#oRUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
#RUN dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
#RUN dnf install -y epel-release
# Install Node...
RUN dnf install -y npm

# Copy app to /src
COPY . /src

# Install app and dependencies into /src
RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && node ./app.js
