# led
Goal: express a REGEX replacement in 2 strings:
1. the pattern to be matched
2. the replacement

E.g.:

‛◦«p»’
‛⟨#Output «p»⟩’

--->

s/◦\([^ \t\n]*\)/⟨#Output \1⟩/

---

Notes:
Currently hacking on ../bred for basic code
led.ohm parses the 2-stringer
led.fab converts the 2-stringer into a REGEX

outputport.led => the 2-stringer
outputport.out => the regex transpiled from outputport.led

first: run 'make install' to get the node_js and subrepos needed
"fab" is the "fabricator" transpiler (see Makefile for usage)

The name "led" comes from "Line-oriented stream EDitor"
"led" simply does REGEX-like things, whereas "bred" parses bracketed things
"bred" is recursive, "led" is not recursive

approach:
1. do the simplest version first
   - match verbatim characters
   - match variables (enclosed in «...» unicode brackets)
N. maybe enhance patterns if there are some common use-cases that can't be handled easily