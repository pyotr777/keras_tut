#!/bin/bash
#
# Check that all libraries used by theano are mounted into Docker container.
# On host run $ save_theano_libraries.sh,
# Copy libraries.txt into container and in container run
# $ check_libraries.sh libraries.txt
# Files that was not found in container will be displayed.


for file in $(cat $1); do
	if [ ! -e $file ]; then
		echo "$file not found"
	fi
done