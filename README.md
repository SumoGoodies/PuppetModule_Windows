# Puppet Module to install a Sumo collector

This is an example of Sumo puppet module.  You will need to update the access ID/Key in the sumo.conf file.  Additionally, you can enabled other flags, ie: proxy or clobber.  Read the reference for more information.  You should also update/modify the sumo.json to include all your sources that you want to include as part of the install.

Sample tasks:
1.  In Sumo, create Access ID/Key for collector registration.
2.  Copy this module onto your Puppet Master module repository.
3.  In Your puppet console, assign the Sumo class to your targeted nodes.

Have fun!
