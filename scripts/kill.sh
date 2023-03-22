#!/bin/bash -f
kill -9 $(ps aux | grep '[v]itis' | awk '{print $2}')
#kill -9 $(ps aux | grep '[v]ivado' | awk '{print $2}')

