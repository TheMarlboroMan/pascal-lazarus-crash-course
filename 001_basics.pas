//Welcome!. This is a comment...
(*There are other kinds of comments... For example, this is an old-style
multiline comment...*)
{But nowadays you are most likely to see this other kind of comment, using 
braces. This is the kind of syntax we will try to use...

With that out of the way, pascal files use the .pas extension. This file
describes a program, which must be named through the "program directive". For
now, make sure that "program #nameofyourprogram#;" is the first thing in your
.pas files. By the way, #nameofyourprogram# must be a valid identifier. Let's
not get too deep into that, just try to use letters and underscores, maybe
numbers too, but don't add them at the beginning of your identifier...

This is how you start your program... Notice the colon at the end: that's the
end of our expression...}
program chapter_001_basics;
{Pascal programs are very, very structured (so structured, in fact, that 
compilers can get them working in a single pass, but that's neither here nor
there for our purposes). Right after your "program", you can have a few 
sections to describe procedures, functions, variables and constants... Let's
skip all those and go to the compulsory block: the program code.

You "start" a block with the keyword "begin", and end it with "end". Every 
program must have a "begin" and "end" pair: they are the equivalent of curly
brackets in languages such as C, Java, PHP or Perl. The "begin"-"end" pair 
present on your program is sort of the "main" function in C or C++: whatever
you put in there will be executed when the program runs...
}
begin

{Instructions must be added sequentially. Indentation and whitespace makes 
little sense to the compiler, but a lot of sense to yourself, so make sure you
indent your code!}

{writeln is the function to write data to the console. Here we are writing a 
greeting using a string. Strings are delimited by single quotes, very different 
from other languages, but you will get used to it soon enough. All your 
statements must terminate with a colon}
	writeln('Hi there!');

{writeln adds a newline at the end... on the other hand, "write" does not...}
	write('Is there anybody there?');

{So we must manually add it using the old CR-LF sequence, unquoted...}
	write(#13#10);
{That's horrid anyway, so let's use writeln instead... Notice that we can pass
as many parameters as we want to writeln, separated by commas. Here we mix
strings and numbers}
	writeln('This call has more than ', 3, ' parameters', '.');

{One tricky thing: notice that "end" has a period at the end. This indicates
the end of the block and of the program. Your code will refuse to compile if
you don't add that period at the end!}
end.
{And that's the end of our program. Now go, compile and run this program  I'll
see you in the next section.}
