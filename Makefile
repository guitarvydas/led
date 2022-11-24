all: fab/fab spec

dev: manual

manual:
	./fab/fab - Led led.ohm ledidentity.fab <outputport.led
	# ./fab/fab - Led led.ohm ledohm1.fab <outputport.led >mpattern.ohm
	# ./fab/fab - Led led.ohm ledohm2.fab <outputport.led >>mpattern.ohm
	# ./fab/fab - Led led.ohm ledfab.fab <outputport.led --support=support.js >mpattern.fab
	# ./fab/fab - NestingGrammar mpattern.ohm mpattern.fab <shortcontainer.u0d >shortcontainer.0d

spec:
	./led.bash connection.led connection.u0d >connection.0d
	./led.bash senderreceiver.led connection2.u0d >connection2.0d
	cat connection2.0d

install: repos npmstuff

fab/fab : ../fab/fab
	multigit -r

repos:
	multigit -r

npmstuff:
	npm install ohm-js yargs atob pako
