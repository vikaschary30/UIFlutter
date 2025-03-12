import 'dart:io';
void switchd6(int marks){
	var x = switch(marks)
	{
		89 || >89 => 'A',
		79 || (<89 && >79) => 'B',
		69 || (<79 && >69) => 'C',
		<69 => 'F',
		_=> 'Sorry, better luck next time',
	};
	stdout.write(x);
}