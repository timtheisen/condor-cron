#!/bin/sh

# Pick up any configuration for condor-cron from /etc/sysconfig.
# The big thing we are looking for is that Condor can sometimes be installed
# into a non-standard location and we need to set it up in the PATH
if [ -f /etc/sysconfig/condor-cron ]; then
    . /etc/sysconfig/condor-cron
fi

CONDOR_CONFIG=/etc/condor-cron/condor_config
export CONDOR_CONFIG
