{Pascal is one of those languages which strictly honor the distinction between
procedures and functions. Both are reusable units of work which might include 
parameters but their main difference is that functions must return values while
procedures can not.

These subroutines are declared after our program, using specific syntax. In 
this chapter we'll see how to declare and use functions and procedures, how
to pass parameters by reference and how to forward declare these units of work.
When we are done, you should be ready to start separating your programs in 
discrete, reusable units of work.}

program chapter_006_functions_and_procedures;

{Let's start with a very simple procedure that will just greet us. A procedure
is declared by "procedure procedure_name" and its statements between a block
of "begin"-"end".}

procedure simple_greet;
begin
	writeln('Hi!');
end;

{When it comes to using our procedure in the main block, we just call it like
we call writeln: use the name of our procedure and a pair of parentheses... Now
it would be a good time to tell/remind you that:

	- Pascal is case insensitive: simple_greet, SIMPLE_GREET and Simple_GrEeT
	are the same procedure.
	- Parentheses are only needed when you must pass parameters.
	- Act like a sane person: stick with a capitalization scheme and use 
	the parentheses. Readable makes maintenable, maintenable beats clever, 
	clever is rarely a compliment when it comes to software development.

That said, notice that our procedure just "does" something and does not "return"
anything: that is, it acts and leaves us with nothing to show for it. Let us
now declare a function, that will return a value when called. The syntax is 
mostly the same, we just add the type of value that the function returns:}

function get_two:integer;
begin

{Here is where the magic happens. Most languages with functions implement some
keyword to specify that the function returns a value (like "return"). In Pascal,
there's an implicit variable with the name of the function which we can assign a
value to.}

	get_two:=2;
end;

{Of course, procedures and functions are nothing if we can't send values to 
them. Here's a more sophisticated greeting procedure and a math function. See
if you can guess how parameters work...}

procedure personalised_greet(name:string);
begin

	writeln('Hi ', name, '!');
end;

function add_numbers(valuea, valueb:integer):integer;
begin

	add_numbers:=valuea+valueb;
end;

{That's it: a parenthesized list is added after the procedure/function name,
fully typed. We can just do "personalised_greet('Jimi')" and "add_numbers(4,3)"
to view "Hey Jimi!" and to get "7". By the way, "valuea,valueb:integer is 
the same as "valuea:integer, valueb:integer". Don't be confused, the last 
"integer" is the return type!

Procedures and functions can call one another but Pascal won't be able to call 
anything (actually, I won't be able to use anything) that hasn't been seen 
before in our source code. This creates "chicken and egg" problems in which 
A must call B, B must call A and the language won't just allow it. Some 
languages solve this through prototyping and some other through hoisting  As 
in C++, we can use "forwards" to solve the problem... 

We will tell Pascal that a function "part1" will exist. Then create a function
called "part2" that calls "part1" and finally define "part1" as something that
must call "part1". In the way, we add some parameters of different type, just
for the fun of it...

Here we say that "part1" will exist... Because Pascal is not godlike, we must
also tell the parameters in advance.}
procedure part1(counter:integer; name:string) forward;

procedure part2(counter:integer; name:string);
begin

	if counter > 1 then 
	begin
		part1(counter-1, name);
	end
	else
	begin
		writeln(name, '!');
	end;
	
end;

{Here's where we define "part1"}
procedure part1(counter:integer; name:string);
begin

	write(name, ' - ');
	part2(counter, name);
end;

{More involved functions can have their own variables. These variables will be 
visible only inside the function. By the way, that's a terrible param name if I 
ever saw one!}

function something_with_pi(param:real):real;
var
	temporary:real;
begin

	temporary:=param*pi;
	something_with_pi:=temporary*pi;
end;

{You might be wondering about constants for functions and procedures. Well, I hate 
to dissapoint you but if you declare a constant in a function or procedure it
will be visible for the rest of the program onwards...

Speaking of which, we said earlier that Pascal won't be able to use anything 
that it hasn't seen before. And that's real. If we were to declare procedure
that uses a constant before the constant itself is declared, the program
would not compile since Pascal does not do name hoisting. Go ahead, try it, I 
will be waiting.

Good, with that out of the way, we only have to talk about references now. By
default (this is an oversimplification) parameters are passed around by value. 
That means that given a variable X passed along to a function "f" with the 
parameter name Y, X and Y actually point to different memory addresses, thus
any change done to Y will not be reflected on X. 

Unless you use ass by reference semantics, that is.

Pass by reference syntax involves adding the parameter in the parameter list
separated from your regular params by a colon and prefixed by "var". An 
example:}

procedure multiply_reference_by(multiplier:integer; var reference_value:integer);
begin

{reference_value points to the actual memory address of the original variable,
so any changes here are reflected in the caller's scope.}

	reference_value:=reference_value*multiplier;

{However, nobody will ever care about this statement...}

	multiplier:=6;
end;

{Finally, a small utility function, our little driver program and we are done.}

function ask_for_number():integer;
begin

	writeln('Enter an integer and play nice : ');
	
{Just so you know, this is valid too... We are not calling readln with the
result from ask_for_number. We are using the automatic "ask_for_number" variable
that holds the return value for this function.}

	readln(ask_for_number);
end;

var
	mynumber:integer;
	mymultiplier:integer;

begin

	simple_greet();
	writeln(get_two());
	personalised_greet('Hendrix');
	writeln(add_numbers(8, 3));
	part2(3, 'Mike');
	writeln(something_with_pi(1.1));
	mynumber:=ask_for_number();
	mymultiplier:=ask_for_number();
	writeln('Before passing by reference, my number is ', mynumber);
	multiply_reference_by(mymultiplier, mynumber);
	writeln('After passing by reference, my number is ', mynumber);

end.
