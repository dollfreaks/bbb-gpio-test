#!/bin/bash

UBERJAR=com.dollfreaks.bbb-gpio-test-0.1.0-SNAPSHOT-standalone.jar

inotifywait -q -e close_write -m target/$UBERJAR | xargs -I {} bash -c "scp target/${UBERJAR} root@192.168.7.2: && ssh root@192.168.7.2 java -jar ${UBERJAR} > /tmp/gpio-results"
