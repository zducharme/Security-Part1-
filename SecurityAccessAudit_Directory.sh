#!/bin/bash

# Zachary Ducahrme 11/8/19

# Compare Directory Changes

cronjob -e 0 24 0 0 0 cp /var/log/messages /directorychanges/log/messages
diff -ur /var/log/messages /directorychangges/log/messages
cat /var/log/messages /directorychanges/log/messages > /directorychanges/output/SecurityAudit_DetectDirectory.log

# END
