#!/bin/bash

pulsemixer --id $(pulsemixer --list-sources |grep Default | cut -f3 -d : | cut -f1 -d ,| xargs) --change-volume $15
