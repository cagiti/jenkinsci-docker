FROM jenkins/jenkins:2.263.1-lts-slim

# Install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Customise Login page
COPY LoginTheme.xml /var/jenkins_home/io.jenkins.plugins.logintheme.LoginTheme.xml
