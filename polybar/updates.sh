#!/bin/bash

echo "$(sudo xbps-install -S > /dev/null 2>&1; xbps-updates)"
