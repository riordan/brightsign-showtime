#!/usr/bin/env python

import sys
import os.path
import logging
from __future__ import (absolute_import, division,
                        print_function, unicode_literals)
from builtins import *

if __name__ == '__main__':
    import optparse
    opt_parser = optparse.OptionParser()

    options, args = opt_parser.parse_args()
    print(options)
