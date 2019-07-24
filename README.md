#A crash course in Pascal and the Lazarus IDE.

#Prerequisites:

- Basic knowledge about coding is required (what are control flow structures,
	what are functions, what is a class, what is an operator, what are
	escape sequences...).

- Basic knowledge about data types is required (what is a string, what is a 
	number, what is an array, what is a map, what is an instance...).

- Basic knowledge about filesystems and streams is required (what is a file,
	what is the standard input/output...).

##Tools you will need:

- Free Pascal Compiler (2.6.2-8).
- Lazarus IDE (1.0.10).
- A text editor.

##Why Pascal?

###But this is not really Pascal.

That's right... but Pascal just rolls off the tongue better than Object Pascal
or FreePascal's implementation of Pascal. 

If you are up for some interesting reading, check the original Pascal language 
and read about how vendors added into it in order to turn it from a learning 
language into a production one. 

Without a hard, C++ style comitee behind it, Pascal's derivatives are 
fragmented. Just forgive me for using "Pascal" instead of some other term.

###But I read somewhere that Pascal is dead.

Last time I checked (around summer 2019), Pascal is still in the top 20 above 
languages that gathered hot gossip such as Lua, TypeScript or Kotlin. Granted, 
it is below stuff like PHP and the almigthy C but still above Perl, Rust, Lisp 
or F#. Language wars are stupid, but if you are willing to pronounce Pascal dead 
(and trust the TIOBE index), please, do the same about those below it (or just
go learn Java :D).

##How to use this?

Write along as you read, try and compile often, play with the examples.

##Compiling the examples

fpc ./001_basics.pas -FEexec/

/usr/bin/ld.bfd: warning: exec/link.res contains output sections; did you forget -T?

