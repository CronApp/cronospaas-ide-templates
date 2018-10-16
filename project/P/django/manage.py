#!/usr/bin/env python
import os
import sys
from os import environ
from django.core.management.commands.runserver import Command as runserver
runserver.default_port = environ.get('VCAP_APP_PORT')
runserver.default_addr = '0.0.0.0'

if __name__ == '__main__':
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'cronapp.settings')
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    execute_from_command_line(sys.argv)
