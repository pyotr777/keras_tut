#!/bin/bash
echo "Save library files used by Theano to libraries.txt file"
sudo strace -e openat python -c "import theano" 2>&1 | grep -v "py" | grep -v "No such" | grep -v "null" | grep -v "SIGCHLD" | awk '{ print $2 }' | sed -r 's/[\",]//g' > libraries.txt
