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