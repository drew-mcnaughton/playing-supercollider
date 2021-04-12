"Hello, world!".postln; //this is sterotypical first bit of script

//Can the constituents be broken over a line
"Hello, world!"   //first the string which is also an object
.postln           //then the message which is a method
;                 //followed by the line termination

//Seems to work

//What about breaking over lines in awkward places
"Hello, wo
rld!".po
stln;

//No that doesn't seem to work

//What about just breaking up the string
"Hello, wo
rld!".postln;

//It worked but returned the string broken over two lines

//How about the first one without the line termination
"Hello, world!"
.postln

//That seems to work

//How about with multiline comment in between
"Hello, world!"
/* The above also worked when there was no line after and
when there were two empty lines after*/
.postln

//That worked too

//There are a few more bits to try out
"Hello, world!"
"I like tunes".postln

//Both strings are printed side by side
//It works even without .postln but shows only the final output

"Hello, world!".postln;
"I like tunes".postln;

/*In this case the lines are printed one above the other
and the final output is just the last line. Also I didn't surround these by parentheses but it still worked and I just read that you only need to put semi-colon at the ends of lines that are followed by other lines. The last line doesn't need it but it won't give an error if you put one there anyway. I guess this is because the carriage return although unseen just sends the computer reading it straight onto the next line like the strings above and the two added together are not understandable syntax.*/



