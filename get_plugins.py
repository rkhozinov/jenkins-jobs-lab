#!/usr/bin/env python

from jenkins import Jenkins
import sys

server = Jenkins(sys.argv[1])
for plugin in server.get_plugins().itervalues():
  print ("{name}:{version}".format(name=plugin['shortName'],
                                   version=plugin['version']))
