import 'dart:io';
void switchd1(String a) {
	switch(a)
	{
		case 'red':	stdout.write('Red is found\n');
				break;
		case 'green':	stdout.write('green is found\n');
				break;
		case 'blue':	stdout.write('blue is found\n');
				break;
		case 'black':	stdout.write('black is found\n');
				break;
		default:	stdout.write('color is not found\n');
	}
}
void switchd2(String a)	{
	switch(a)
	{
		case 'red':	stdout.write('Red is found\n');
				
		case 'green':	stdout.write('green is found\n');
				
		case 'blue':	stdout.write('blue is found\n');
				
		case 'black':	stdout.write('black is found\n');
				
		case _:	stdout.write('color is not found\n');
	}
}
void switchd3(String a)	{
	switch(a)
	{
		case 'hot':					
		case 'sunny':	stdout.write('Use umbrella\n');				
		case _:	stdout.write('invalid input\n');
	}
}
void switchd4(String a)	{
	switch(a)
	{
		case 'hot' || 'sunny':	stdout.write('Use umbrella\n');
				
		case _:	stdout.write('invalid input\n');
	}
}
String switchd5(String a){
	return switch(a)
	{
		'hot' || 'sunny'=>'Use umbrella',	
		_=>'invalid input',
	};
}
