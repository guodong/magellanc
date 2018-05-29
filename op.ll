Generating IR code
Generating block
Generating struct declaration of Packet
Generating function declaration of isOpen
Generating variable declaration of port_t port
======= Print Symbol Table ========
	port = 0x7fa13c706388: 0x7fa13c7018b0
===================================
Set port as func arg
Generating block
Generating array initialization of openPorts
Generating variable declaration of int openPorts
setArraySize: openPorts: 1
Generating Integer: 2
======= Print Symbol Table ========
	openPorts = 0x7fa13c7065f8: 0x7fa13c701a90
	port = 0x7fa13c706388: 0x7fa13c7018b0
===================================
Generating array index assignment of openPorts
sizeVec:1, expressions: 1
Generating Integer: 0
Generating Integer: 8080
Generating array index assignment of openPorts
sizeVec:1, expressions: 1
Generating Integer: 1
Generating Integer: 8081
Generating variable declaration of bool open
======= Print Symbol Table ========
	open = 0x7fa13c706708: 0x7fa13c701e90
	openPorts = 0x7fa13c7065f8: 0x7fa13c701a90
	port = 0x7fa13c706388: 0x7fa13c7018b0
===================================
Generating assignment of open = 
Generating Integer: 0
dst typeid = IntegerTyID
exp typeid = IntegerTyID
Generating variable declaration of int i
======= Print Symbol Table ========
	i = 0x7fa13c706d08: 0x7fa13c7020c0
	open = 0x7fa13c706708: 0x7fa13c701e90
	openPorts = 0x7fa13c7065f8: 0x7fa13c701a90
	port = 0x7fa13c706388: 0x7fa13c7018b0
===================================
Generating assignment of i = 
Generating Integer: 0
dst typeid = IntegerTyID
exp typeid = IntegerTyID
Generating identifier i
Generating binary operator
Generating identifier i
Generating Integer: 2
Generating block
Generating if statement
Generating binary operator
Generating identifier port
Generating array index expression of openPorts
sizeVec:1, expressions: 1
Generating identifier i
openPortsNot isFuncArg
