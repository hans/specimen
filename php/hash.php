<?php

// :specimen: hash.general //
	// :general: Create a hash //
	  // In PHP, arrays are just hashes where the keys happen to be
	  // ordered integers starting at 0. Both are created with the Array()
	  // method. Interestingly, this means that hashes are ordered. Oh, PHP.
		$foo = Array(); // Creates an empty hash/array
		$bar = Array("key" => "value", "pi" => 3.14); // Initializes a hash
	// end //
// end //

// :specimen: hash.manipulation //
	// :manipulation: Setting hash elements' values //
		$foo["x"] = 12;
		$foo["x"] = "bar";
	// end //
	
	// :manipulation: Add an element to a hash //
		$foo[9] = "baz";
		// To add an element to the hash with the next sequential key, use
		$foo[] = "spam";
	// end //
	
	// :manipulation: Checking if a hash contains a certain key //
	  if($foo["key"]) {
	    // $foo contains key "key"
	  }
	// end //
	
	// :manipulation: Delete a hash element //
	  unset($foo["bar"]); // Removes key/value pair with key "bar"
	// end //
	
	// :manipulation: Traverse a hash //
		foreach($foo as $key => $value) {
		  // Do something
		}
	// end //
	
	// :manipulation: Inverting a hash //
	  // This isn't completely sound -- if a value occurs multiple times,
	  // the last key is used as it's value, and all the others are *lost*.
	  // Note: for this to work properly, all the values have to be legal hash
	  // keys -- i.e., strings or integers.
	  $foo = array_flip($foo); // => Hash with values => keys.
	// end //
	
	// :manipulation: Merge two hashes //
	  // Appends the key/value pairs in $a to the end of $foo.
	  $a = Array("key" => "value");
	  $foo = array_merge($foo,$a);
	// end //
// end //

?>
