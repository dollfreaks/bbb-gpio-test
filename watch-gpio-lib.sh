#!/bin/bash

inotifywait -q -e attrib -m ~/.m2/repository/com/dollfreaks/gpio/0.1.0-SNAPSHOT/gpio-0.1.0-SNAPSHOT.jar | xargs -I {} lein uberjar
