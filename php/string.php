<?php

// :specimen: string.basics //
	// :basics: Set a variable to a string value //
		$str = "string";
		$str = 'string';
	// end //
	
	// :basics: Escape a single quote //
		$str = "\'quote\'";
	// end //
	
	// :basics: Multiline strings //
		$str = <<<STR
		A heredoc string, with 
		the marker (STR in this case)
		on a line by itself, with
		no leading spaces.
STR;
	// end //
// end //

// :specimen: string.substrings //
	// :substrings: Retrieve parts of a string //
		$str = "abcdefg";
		$substr = substr($str,1,3); // substr(STRING, START, LENGTH);
		                            // Yields "bcd"
	// end //
	
	// :substrings: Modify parts of a string //
	
	// end //
// end //

// :specimen: string.defaults //
	// :defaults: Set string defaults //
		
	// end //
	
	// :defaults: Set strings if not already set //
		
	// end //
// end //

// :specimen: string.general //
	// :general: Reversing a string //
		$str = "foo";
		$rev = strrev($str); // Yields 'oof'
	// end //
	
	// :general: String case //
		$foo = "aAbBcCdD";
		$upper = strtoupper($foo);
		$lower = strtolower($foo);
		$caps = ucwords($foo); // or ucfirst($foo);
	// end //
	
	// :general: Trimming strings //
		$foo = "  foo  \n";
		$foo = trim($foo); // Yields "foo"
	// end //
// end //

?>
