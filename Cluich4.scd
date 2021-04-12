//After having a bit of a break and chatting with dad I thought I'd try something.

(
{ Pan2.ar(
	SinOsc.ar,
	0,
	1)
}.play
)

//This works, so what happens if I just do this

{
	{ Pan2.ar(
		SinOsc.ar,
		0,
		1)
	}.play;
}

//The post window outputs -> a Function
//no error but no sound either

//What about this?
{
	{ Pan2.ar(
		SinOsc.ar,
		0,
		1)
	}.play
}.value

//It plays!

//Now I could try to allocate this function to a variable

tone = {
	{ Pan2.ar(
		SinOsc.ar,
		//Just realised I didn't even have the semi-colon above
		0,
		1)
	}.play;
}

//That comes back with an error : Variable 'tone' not defined, so try...

(
var tone = {
	{ Pan2.ar(
		SinOsc.ar,
		0,
		1)
	}.play;
};
tone.value;
)

//That worked as well but only after I put brackets round it all.
//Otherwise it came back with the error: Variable 'tone' not defined.
//It seems that variables only persist in runtime.

//It works without the brackets as well but only when it is all selected.

//Brackets of different types seem to be important in this language.
//But basically a piece of well-formed code between curly braces is a function.
//And they work nested inside each other as well.

//It does not work without var in front of tone

//now that I've worked out how a function is formed I want to try something

(
var toneB = {
	{ [ SinOsc.ar(440, 0, 0.5),
		SinOsc.ar(440, 0, 0.5) ]
	}.play;
};
toneB.value;
)

//As I thought these are pretty much exactly the same
//So the 2 funtions are the equivalent of each other.
//I also noticed how the IDE handily grays out the text between brackets.