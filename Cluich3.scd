(
ctrl = { SinOsc.kr (0.1, (pi * 0.5), 0.5, 1) };
freq = 200 + (ctrl * 100)
{ Pan2.ar (
	SinOsc.ar (freq),
	0,
	0.5
	)
}.play
)

//This is throwing up errors everytime I try it

//Going back to something more basic

f = { "Function evaluated".postln; };
f;
f.value;
