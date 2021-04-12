SinOsc.help //this method can be used to bring up help on a class

{ SinOsc.ar() }.play

/*This is probably the simplest way to get a tone and all it does
is play a 440hz sinewave with all the default arguments,
i.e. starting at the beginning of the cycle, full volume (mul) and
no addition to the mul so going between 1 and -1.*/

//Can it work without the parentheses?

{ SinOsc.ar }.play

//Apparently yes, so the above are equivalent

//Anything enclosed in curly brackets is a function.

SinOsc.allSubclasses

//Came up with Nil so I guess no subclasses

//also the functions above only apply to one channel
//Channel one is left channel by default

/*However using the Pan2 class the channel sound can be
manipulated in the stereo field. This requires the SinOsc class
be used as an argument*/

(						//Opening parenthesis as multi-line
{ Pan2.ar (				//Pan2 class with audio method
	SinOsc.ar,			//Basic SinOsc.ar class as first argument
	0,					//Centre of field panning
	0.5					//Amplitude of multiplier 0.5
    )					//Closing parenthesis of Pan2 arguments
}						//Closing curly brace of function
.play					//Method to output audio
)						//Last parenthesis of multi-line

/*I could have put this all on one line but I decided to try it
on multiple lines and it worked so I can put notes in if I want*/