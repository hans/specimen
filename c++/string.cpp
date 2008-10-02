// :specimen: string.basics //
	// :basics: Set a variable to a string value //
		#include <string>
		std::string foo = "foo";
		std::string bar("bar");
	// end //
	
	// :basics: Escape a single quote //
		std::string quote = "\'quote\'";
	// end //
	
	// :basics: Multiline strings //
		// Not supported, but you can fake it (badly) with concatenation:
		std::string multi = "a string split " +
		        std::string("across multiple lines ") +
		        std::string("by discretely typing each line";
	// end //
// end //

// :specimen: string.substrings //
	// :substrings: Retrieve parts of a string //
		std::string str = "foobarbaz";
		std::string sub = foo.substr(3,3); // => "bar"
	// end //
	
	// :substrings: Modify parts of a string //
		// Complicated.
		#include <cstring>
		std::string orig = "cstrings are hard";
		strcpy( ((char *)orig.data()) + 13, "easy"); // => "cstrings are easy"
	// end //
// end //

// :specimen: string.defaults //
	// :defaults: Set string defaults //
		
	// end //
	
	// :defaults: Set strings if not already set //
		std::string def;
		if(def.empty())
		  def = "foo";
	// end //
// end //

// :specimen: string.general //
	// :general: Reversing a string //
    std::string abc = "abcdef";
    for(int i=0;i<abc.length()/2;i++) {
      char t = abc.at(i);
      abc[i] = abc.at(abc.length()-i-1);
      abc[abc.length()-i-1] = t;
    }		
	// end //
	
	// :general: String case //
		std::string up = "aAbB";
		for(int i=0;i<up.length();i++) {
		  if(up.at(i) <= 'z' and up.at(i) >= 'a')
		    up[i] += 'A'-'a';
		} // => AABB
		
		std::string down = "aAbB";
		for(int i=0;i<up.length();i++) {
		  if(up.at(i) <= 'Z' and up.at(i) >= 'A')
		    up[i] -= 'A'-'a';
		} // => aabb
		
		std::string word = "word";
		if(word.at(0) <= 'z' and word.at(0) >= 'a')
		  word[0] += 'A'-'a';
		// => Word
	// end //
	
	// :general: Trimming strings //
		
	// end //
// end //
