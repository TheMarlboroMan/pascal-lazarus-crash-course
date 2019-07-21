{Welcome to the second chapter... Let's review: first, the program directive...}
program chapter_002_variables;
{We said that programs could have a few sections... The first one we'll see is
the "var" section (or VAR, Pascal is case insensitive!!!). This section will
list the variables for the main block of our program.

Stop there for a minute: yes, you must list all variables. That's the way it
goes in Pascal. I actually kind of like it: it gives you a nice preview of all
that you might find and helps you think about what is that you are doing.

Anyway, you start the "var" section by typing "var". It ends when it finds 
another section (say "const" or the "begin"-"end" block). Indentation does not
matter (say hello to Python), but it is recommended. Let us start the section.}

var
{There, we started the section  Now we list the variables this way: list of 
comma-separated-names:type=optional value if we just specified a variable. 
The following are all valid declarations:}
	first_number:integer; //This declares a 16-bit integer.
	second_number, third_number: integer; //This declares two more.
	fourth_number:integer=33; //This declares a fourth, with an initial value.
	a_string:string='This is a string'; //And this does the same with a string.
{These are the declarations for our program. Now the "begin"-"end" block starts,
so the "var" block ends...}
begin

{Our first three integers don't have values, so let's do some assignment...}
	
	first_number:=1;

{:= is the assignment operator. I know you hate it. You'll hate comparison 
operators even more, so focus on remembering ':= means assign'... You can 
assign values of the same type...}

	second_number:=first_number;

{You can update values...}
	second_number:=second_number+10;

{And, of course, you can use arithmetic operators to change values... This will
do 1*2 (that's 2) and add 11, so third_number will be assigned the value 13.}
	third_number:=(first_number*2) + second_number;

	fourth_number:=third_number + first_number + second_number;

{Let us check our assumptions by printing some lines and learning about 
formatting: with writeln we'll add a colon and a number N to each variable we 
print. This will right align the numbers and pad them with N spaces, so 
they look good}
	writeln(first_number:5, second_number:5, third_number:5, fourth_number:5);

{Finally, for completeness sake, let's print the string variable...}

	writeln(a_string);

{...reassign it...}

	a_string:='This had another value.';

{...and print it again.}

	writeln(a_string);

{And that ends our chapter on variables: remember, "var" section, ":="...}

end. //...and that pesky colon. See you on the next chapter.
