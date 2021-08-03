#!/bin/bash
# _containment_

clear
set -e
trap 'catch' ERR

catch () {
    echo '*** FATAL ERROR ***'
    exit 1
}

# _details_
script1 () {
	echo hello
	echo world 
	echo from script 1

}
script2 () {
	echo hello
	echo world 
	echo from script 2

}
script3 () {
	echo hello
	echo world 
	echo from script 3

}

# _fb pipeline_
	script1
	script2
	script3
