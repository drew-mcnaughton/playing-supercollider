"Hello, world!".value //this is an easy way to output Hello, world!

5 + 3.value //returns 8, brilliant!

f = { "Evaluating...".postln; 7 + 8; }
f.value

/* That's interesting that you can run the first line and then the second
and it still works so in this case the variable contents seem to be remembered.
I just read that it is because varibles a to z are pre-defined and have global
scope, whereas other variables only have scope within a function or a block
of code, that is a set of lines all executed at the same time.*/

//This is a good example from the tutorials to get your head around

f = { arg a; a.value + 3 };   	//Remember to put semi-colon, call value on arg
f.value(3);						//This returns 3 + 3 = 6
g = { 3.0.rand; };				//Generates a random floating point between 0 and 3.0
f.value(g);						//Here the arg is a function, cool, right!
f.value(g);						//Try it again, different result
