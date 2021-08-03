#!/bin/bash
clear
set -e
trap 'catch' ERR

catch () {
    echo '*** fatal error in run.bash'
    exit 1
}

cp ../phase2/fb.pl fb.pl

temp=_temp_$RANDOM
temp2=_temp2_$RANDOM
allContains1 ()
    {
        swipl -g 'consult(fb).' \
	      -g 'consult(onSameDiagram).' \
	      -g 'consult(contain1).' \
              -g 'allContains1.' \
	      -g 'halt.' \
	      >${temp}
       cat ${temp} fb.pl >${temp2}
       sort ${temp2} >fb.pl
    }

printAllDeepContains ()
    {
        swipl -g 'consult(fb).' \
	      -g 'consult(onSameDiagram).' \
              -g 'consult(contain2).' \
	      -g 'printAllDeepContains.' \
	      -g 'halt.' \
	      >${temp}
       cat ${temp} fb.pl >${temp2}	      
       sort ${temp2} >fb.pl
    }

printAllDirectContains ()
    {
        swipl -g 'consult(fb).' \
	      -g 'consult(onSameDiagram).' \
              -g 'consult(contain3).' \
	      -g 'printAllDirectContains.' \
	      -g 'halt.' \
	      >${temp}
       cat ${temp} fb.pl >${temp2}	      
       sort ${temp2} >fb.pl
    }

allContains1
printAllDeepContains
printAllDirectContains

rm -f ${temp} ${temp2}
