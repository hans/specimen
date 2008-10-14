// :specimen: string.basics //
	// :basics: Set a variable to a string value //
		char str[] = "foo bar";
		char *str2 = "foo bar";
	// end //
	
	// :basics: Escape a single quote //
		char quote[] = "\'quote\'";
	// end //
	
	// :basics: Multiline strings //
		// Not possible, or at least not easy.
	// end //
// end //

// :specimen: string.substrings //
	// :substrings: Retrieve parts of a string //
		char *str = "foo bar baz";
		char *sub = malloc(sizeof(char) * 3); // Where 3 is the length of the substring to copy.
		strncpy(sub,str + 4, 3); // Where 4 is the offset from which to start copying, and 3
		                          // is (again) the length of the substring to copy.
		
	// end //
	
	// :substrings: Modify parts of a string //
		char *source = "foo bar baz"; // Strings declared this way are constants --
		                              // so we have to copy them into a new string
		                              // and modify that one.
		char *base = malloc(sizeof(char) * strlen(source));
		strcpy(base,source);
		
		// Now we can modify our string 'base':
		base[6] = 'z'; // Modify a single character at index 6.
		strcpy(base+8,"fez"); // Overwrite a substring.
	// end //
// end //

// :specimen: string.defaults //
	// :defaults: Set string defaults //
		// Has no meaning in C
	// end //
	
	// :defaults: Set strings if not already set //
		// Note: if you do this sort of thing in your code, you're probably doing 
		// something wrong!
		char *str;
		char *another = "string!";
		if(!str) { // Null string
		  // Copy contents of 'another' into 'str', since 'str' is null.
		  str = malloc(sizeof(char) * strlen(another));
		  strcpy(str,another);
		}
	// end //
// end //

// :specimen: string.general //
	// :general: Reversing a string //
	  // Again, we can't modify a constant string, so create a copy and modify it.
	  char *str = "foo bar baz";
	  char *cpy = malloc(sizeof(char) * strlen(str));
	  strcpy(cpy,str);

		int i=0;
		char t;
		for(i;i<strlen(cpy)/2;i++) {
		  t = cpy[i];
		  cpy[i] = cpy[strlen(cpy)-1-i];
		  cpy[strlen(cpy)-1-i] = t;
		}
	// end //
	
	// :general: String case //
		char *str = "foo";
		char *cpy = malloc(sizeof(char) * strlen(str));
		strcpy(cpy,str);
		
		// Uppercase the first letter of the string:
		if(cpy[0] >= 'a' && cpy[0] <= 'z')
		  cpy[0] += 'A'-'a';
		  
		// Lowercase the i-th letter of a string:
		int i = 0;
		if(cpy[i] >= 'A' && cpy[i] <= 'Z')
		  cpy[i] -= 'A'-'a';
		  
		// Uppercase the entire string:
		int i=0;
		for(i;i<strlen(cpy);i++) {
		  if(cpy[i] >= 'a' && cpy[i] <= 'z')
		    cpy[i] += 'A'-'a';
		}
	// end //
	
	// :general: Trimming strings //
	  // Include this function in your code. Note: this is a rather inefficient
	  // way to trim the string, and only trims from the right hand side, at 
	  // that!
	  char *trim(const char *s) {
      char *reject = " \r\n\t";

      char *cpy = malloc(sizeof(char) * strlen(s));
      int i=0, ptr=0, j=0;
      char seen=0,stop=0;
      for(i=strlen(s)-1;i>=0;i--) {
        seen = 0;
        for(j=0;j<strlen(reject);j++) {
          if(reject[j] == s[i]) {
            seen = 1; 
          }
        }
        if(!seen)
          break;  
      }
      strncpy(cpy,s,i+1);

      return cpy;
    }
    
    // And use it like this:
    char *str = "foo \r\n";
    char *trimmed = trim(str); // => "foo"
	// end //
// end //
