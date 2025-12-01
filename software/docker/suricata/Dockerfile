FROM debian:trixie-slim

#
# Update trixie
#
RUN apt update && \
#
# Install Software: see subnotes for details
#
apt install -y \
suricata \      
gettext-base 
# Removed for slim build emacs          
# Removed for slim build iproute2

#
# File Copying
#

#
# Service Specific Files
#
COPY ./suricata.yaml /etc/suricata/suricata.yaml
COPY ./.env /etc/suricata/.env
COPY ./custom.rules /etc/suricata/rules/custom.rules
#
# Create environment variables from .env
# Replace Suricata.yaml variables with environment variables
# Generate Temp File
# Replace the old .yaml with the new one
# Ensure the file has execute capabilities

RUN . /etc/suricata/.env && \
envsubst "$(sed -e 's/export /$/' -e 's/=[^=]*//' /etc/suricata/.env)" < /etc/suricata/suricata.yaml > /etc/suricata/suricata.yaml.tmp  && \
mv /etc/suricata/suricata.yaml.tmp /etc/suricata/suricata.yaml && \ 
envsubst '${VPORT}' < /etc/suricata/rules/custom.rules > /etc/suricata/rules/custom.rules.tmp && \
mv /etc/suricata/rules/custom.rules.tmp /etc/suricata/rules/custom.rules 
RUN chmod +x /etc/suricata/suricata.yaml
  
#
# Update suricata signatures
#

RUN suricata-update

#
# Remove ensubst since it is no longer needed.
#

RUN apt remove -y gettext-base

#
# Run suricata at container start
#

CMD /usr/bin/suricata -c /etc/suricata/suricata.yaml -i enp0s31f6

#
# Subnotes
#

#
# Software Categories
#
# Primary Service
# Suricata
# Supplemental Software: (To remain in the dockerfile but possibly removed at the end of the build)
# gettext-base: provides envsubst for substituting variables in config files with env variables
# "Fat" Software to be included in dev builds for testing but removed in live builds
# emacs: For File editing
# iproute2: for the "ip" command. Installed to check interface name.
#
