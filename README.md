---
layout: post
title:  "Code Markdown to Bash"
---

# Introduction

A very, very simple transpiler from code-markdown to bash.

Transpile
```
# overview
## a
	e
	g

## b
### e f
### g h
```
to
```
... preamble stuff ...
e () { f }
g () { h }
e
g
```

Note that the above input syntax is editable by emacs md-mode.

Emacs md-mode provides the `TAB` key to allow eliding layers.

## Preamble
```
clear
set -e
trap 'catch' ERR

catch () {
    echo '*** FATAL ERROR ***'
    exit 1
}
```

Errors `exit 1` in any sub-script will be caught by the above.

# See also
[Code Markdown to Structured Pseudo-code](https://guitarvydas.github.io/2021/08/03/Code-Markdown-to-Structured-Pseudo-code.html)

[Glue Tool](https://guitarvydas.github.io/2021/04/11/Glue-Tool.html)
[Glue Manual](https://guitarvydas.github.io/2021/03/24/Glue-Manual.html)
[Blog](https://guitarvydas.github.io)
[References](https://guitarvydas.github.io/2021/01/14/References.html)

<script src="https://utteranc.es/client.js" 
        repo="guitarvydas/guitarvydas.github.io" 
        issue-term="pathname" 
        theme="github-light" 
        crossorigin="anonymous" 
        async> 
</script> 
