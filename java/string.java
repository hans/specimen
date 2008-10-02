// :specimen: string.basics //
	// :basics: Set a variable to a string value //
		String var = "A String!";
		String var2 = new String("Another String!");
	// end //
	
	// :basics: Escape a single quote //
		String var = "A \'quote\'";
	// end //
	
	// :basics: Multiline strings //
		// Java doesn't allow multiline strings, but you can fake it using concat:
		String multiline = "line 1 is a string "+
		                   "that wraps to a new " +
		                   "line a few times.";
	// end //
// end //

// :specimen: string.substrings //
	// :substrings: Retrieve parts of a string //
		String str = "xAAAxx";
		String substr = str.substring(1,4); // Yields "AAA"
	// end //
	
	// :substrings: Modify parts of a string //
	  // Strings are immutable in Java, so you can't modify a string in-place.

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
    String ltor = "abcdef";
    char c[] = ltor.toCharArray();
    for(int i=0;i<c.length/2;i++) {
      char t = c[i];
      c[i] = c[c.length-i-1];
      c[c.length-i-1] = t;
    }
    String rtol = new String(c);		
	// end //
	
	// :general: String case //
		String mix = "aAbBcC";
		String upper = mix.toUpperCase();
		String lower = mix.toLowerCase();
	// end //
	
	// :general: Trimming strings //
		String junk = " str \n";
		String clean = junk.trim(); // Yields "str"
	// end //
// end //
