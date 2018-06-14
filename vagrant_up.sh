#!/bin/bash

EXIT=0
vagrant up avi-controller-1 --color <<< '1st controller boot' || EXIT=$?
vagrant up avi-se-1 --color <<< '1st service engine boot' || EXIT=$?
vagrant up avi-se-2 --color <<< '2nd service engine boot' || EXIT=$?
echo $EXIT
exit $EXIT
