{In this chapter we will take a look at control flow, which ultimately makes
or breaks a program. Along the way we will check a couple of new constructs
and in the end we will have built our first program that actually does 
something.

Speaking of programs: as always, begin with the program statement:}

program chapter_005_control_flow;

{First new thing: constants. Constants are declared under a "const" section.
They are values that cannot be changed during program execution. Say that you
need a value representing the minimum value in a range and such range will 
never change during execution... Well, that's a constant. Declaring constants
is like declaring variables, but we must provide a value (given that we won't
be able to change them at runtime.

This constant specifies the maximum amount of times a piece of our code will
run...}

const
	
	max_loops:integer=3; 

{Rememeber: when assigning values in var and const sections, we use =, not :=}

var

{Our code will loop "max_loops" time, asking for a numeric value until a 
condition is met and providing the sum of such values. So, we will need two 
variables here: one for the input, other for the sum.}

	input, sum, iterator:integer;

{Now the main block of our program. I humbly suggest you to keep this file open
until you are familiar with Pascal's control flow mechanisms, since they can be
a bit different from those you may already know...}

begin

{First, the for loop. For iterates a value (here iterator) in a range. We will
iterate from 1 to max_loops... The syntax goes "for var:=val to val do"... We 
enclose all operations to be done in the for loop between begin and end 
statements, terminated in a colon. This is not needed if we are only executing 
one statement but it is just good sense to add them.}

	for iterator:=1 to max_loops do begin

{For loops always go "up". If you need to go "down", you can write 
"for iterator:=10 down to 1" Values always change by "1" (there is no "step",
value) and you must not increment them, not provide code to do so (unlike in the
C family of languages) since they do so automatically.

Finally, there's also another for, "for in", but we will get to that some other
time.}

		writeln('Iteration number ',iterator);
		sum:=0;

{Now our "repeat" loop. In our program, we prompt for numbers and sum them until
they user inputs 0. This is a good case for "repeat until". Unlike some other
constructs, these do not use "begin" and "end", just "repeat", code to be 
executed and "exit condition".}

		repeat

			writeln('Enter a number, current sum is ', sum ,', 0 to finish: ');
			readln(input);
			sum+=input;

{Pay attention: this is not an assignment but a comparison. Once input is zero
the "repeat-until" loop ends.}

		until input=0; //This is the end of "repeat-until".

		writeln('The sum of your values ', sum);

{Of course, our code is not good without decision making... This is what if
and case clauses are for. First, if the sum is lesser than zero,we will display
a message. If it was larger than zero we will display other but if it is larger
than a 100 we will display another.

The syntax of if looks mostly like you'd expect with one exception: there's no
"else if" construct: every "else" just goes a bit "deeper" into the decision
tree, which kind of becomes apparent if you are strict with indentation.}

		if sum < 0 then
		begin

{After the if clause, our execution block has "begin" and end. It is not 
strictly neccesary for just this one statement, but makes things clearer so
try to make a point of enclosing your blocks in "begin"-"end" pairs.}

			writeln('That was less than zero');

{This one is indented funny, but we need an end to the initial if (this is the
end to the block started in the if condition). Worse still, no semicolon 
follows!!!}

		end {End of sum < 0...}
		else 
		begin {Start of "else" block...}

{Again, after the else clause, our block has begin and end. Notice how we nest
more ifs here to make up for the lack of "elseif" constructs.}

			if sum <= 100 then 
			begin
				writeln('Thas was between 0 and 100');
			end
			else 
			begin
				writeln('Thas was larger than 100');
			end;
		end; {End of else block, finally, a semicolon.}

{So, you see how if blocks can be a bit messy. Keeping your wits with you when
it comes to indentation  Will help lots.

An interesting note on expressions (such as the ones in if statements or 
loop conditions): try to parenthesise as much as you can. The language has a 
way of behaving funny with operator precedence. Good parentheses will help 
state your intention.

Now, "the" case statement, equivalent to "switch", with "else" as default case.}

		case sum of
			105:
			begin {As before, not needed for a sigle statement, but good sense.}
				writeln('Bingo! You landed on 105!!!!');
			end;
			-100:
			begin
				writeln('Bingo! You landed on -100!!!!');
			end;
		else
			writeln('No bonus, try to land on 105 or -100');
		end;

	end; //This is the end of the for loop.

{We did "repeat until" before... Similar to it, we can do "while"... Syntax 
goes "while condition do" plus the usual begin and end blocks, not neccesary
for single statements, but as always, good sense (see the pattern here?).}

	input:=1; {Just hack it so we enter the loop.}
	while input <> 0 do begin {That <> means "different from...}
		writeln('Enter 0 to finish...');
		readln(input);
	end;

end.

{That concludes the chapter on control flow. Let's do a bit of review of what
we can already do:

	- We can declare, retrieve and assign variables and constants (!).
	- We can use fixed-size arrays.
	- We can manage input and output.
	- We can manage control flow according to conditions.

That alone suffices for creating simple programs. In the next chapter we'll 
learn some more features to organise our programs, which will get us a step
nearer of being productive in Pascal.}
