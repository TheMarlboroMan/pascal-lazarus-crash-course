{Like many other programming languages, Pascal has arrays In this chapter we 
will introduce a couple of new data types and get familiar with static-sized
arrays.

This program begins with the usual program declaration:}
program chapter_004_arrays;
{And now we will declare the variables for our main block. All of them will be
arrays, so pay attention to the syntax: name of your variable, colon, array,
open bracket, range, close bracket, of type...}
var
	integers:array [1..3] of integer;

{That means: "integers is an array, whose indexes range from 1 to 3, containing
three integers. Pascal is relatively unique in the sense that it allows you
to specify the indexes of your arrays. Nothing stops you from having your index
start at 603 and end at 605 for a three item array...

Also, notice that "integers" already contains three integers, initialized to
default values. Memory has already been allocated and there are (and will 
always be) three items, not one more, not one less. There are, of course, 
provisions for dynamic-sized containers, but we well get there later.

Now, a few more examples and some more data types.
}

	strings:array [0..2] of string;

{This is a new data type: regular integers fit into 16-bits. These are much
larger. In any case, let us use this comment to ask something from you: please,
check new numeric data types, try to multiply and divide them amongst themselves
and see what happens... By the way, when you have tried the regular math 
operations +, -, *, / and % try also "DIV" (integer division). This is not an
in-depth course into Pascal types, but a crash course: experimentation is
expected!}

	longs:array [10..12] of longint;

{Another new data type: this holds decimal numbers, separated by a dot}

	reals:array [1..3] of real;

{Yet another new data type: a single character, as in C}

	chars:array [1..3] of char;

begin

{Array access is done with brackets. Remember when we said that elements are
initialized to default values?. Let us check that:}

	writeln('Some integers: ', integers[1], ' ', integers[2], ' and ', 
		integers[3]); //Indexes range from 1 to 3.

	writeln('Some strings: "', strings[0], '", "', strings[1], '" and "', 
		strings[2],'"'); //Indexes range from 0 to 2.

	writeln('Some long integers: ', longs[10], ', ', longs[11], ' and ',
		longs[12]); //Indexes range from 10 to 12...

	writeln('Some reals: ', reals[1], ', ', reals[2], ' and ', reals[3]);
	writeln('Some chars: ', chars[1], ', ', chars[2], ' and ', chars[3]);

{Your compiler probably initialized these values to defaults (zero, empty
strings... However, it probably issued a few warnings telling you that the 
values you are accessing were not initialized.

Initializing the values is a matter of assigning to them. Assignment to an
array is just combining the array access with the assigment operator...}

	integers[1]:=1;
	integers[2]:=2;
	integers[3]:=3;

	strings[0]:='This';
	strings[1]:='is';
	strings[2]:='better';

	longs[10]:=44556677;
	longs[11]:=44556678;
	longs[12]:=44556679;

	reals[1]:=0.1;
	reals[2]:=0.2;
	reals[3]:=0.3;

	chars[1]:='a';
	chars[2]:='b';
	chars[3]:='c';

{Now, let us print again...}

	writeln('Some integers: ', integers[1], ' ', integers[2], ' and ', 
		integers[3]);
	writeln('Some strings: "', strings[0], '", "', strings[1], '" and "', 
		strings[2],'"');
	writeln('Some long integers: ', longs[10], ', ', longs[11], ' and ',
		longs[12]);
	writeln('Some reals: ', reals[1], ', ', reals[2], ' and ', reals[3]);
	writeln('Some chars: ', chars[1], ', ', chars[2], ' and ', chars[3]);
end.
