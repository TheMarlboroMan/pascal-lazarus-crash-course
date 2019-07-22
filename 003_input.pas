{Welcome back, this is the third chapter, dealing with user input. As always,
let us name our program:}
program chapter_003_input;
{We are going to need a few variables. Remember how we declare them?. That's
right: we use a "var" block. None of our variables will be initialized...}
var
	integer_input_a, integer_input_b:integer;
	string_input_a:string;
{Here we go. Reading user input from the keyboard is done by using two different
functions: read and readln.}
begin

{Let's begin with readln... It means "readline" so it will try to read whatever
you write into the variable you pass. In this case, if we pass an integer 
variable it will try to read an integer. The function will know when to begin
reading when you hit "enter" and will know when to stop reading when it reaches
the end of the line of your input or finds whitespace.

One very important thing: if you provide anything else than an integer, the 
program will crash. The other thing, if you enter "123 abc 456" it will read
"123" because if found a whitespace. If you just hit enter, it will keep waiting
for you to enter something.}

	write('Enter an integer and hit [enter], play nice: ');
	readln(integer_input_a);
	writeln('You entered ', integer_input_a);

{Now read into a string...}

	write('Enter a string and hit [enter], play nice: ');
	readln(string_input_a);
	writeln('You entered ', string_input_a);

{You can read more than one value... But let's keep things simple and readable}

	write('Enter two integers separated by a space and hit [enter], play nice: ');
	readln(integer_input_a, integer_input_b);
	writeln('You entered ', integer_input_a, ' and ', integer_input_b);

{If you tried entering three values you will notice that the third just got 
discarded...

Also, if you entered very large integers you saw them overflow at the 16-bit 
barrier, with results different from the ones you entered. That's to be 
expected.

Perhaps you tried entering invalid input and the program crashed... How do we
get around that?. Well, a possible solution is to read into a string and then
do our checking, but we are getting ahead of ourselves. 

Let's try "read" now.}

	write('Enter an integer and hit [enter], play nice: ');
	read(integer_input_a);
	writeln('You entered ', integer_input_a);

{So far, no difference... how about...}

	write('Enter two integers separated by a space and hit [enter], play nice: ');
	read(integer_input_a);
	writeln('You entered ', integer_input_a);
	read(integer_input_b);
	writeln('You entered ', integer_input_b, ' too!');

{That's a big difference now!!!!. The first call to read consumed the first 
integer and printed it out. The second call consumed the second one! readln
will consume the whole line, whatever you enter, while read allows you to 
"tokenize" it.

Anyhow, now we know the basic structure of a program, a few variable types, how
to print output and how to get input. In the next chaper we'll learn about 
Pascal control flow structures.}

end.
