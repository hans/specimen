# :specimen: string.basics #
	# :basics: Set a variable to a string value #
		string = 'foo bar'
		string = %q/foo bar/
		string = %q[foo bar]
		string = %q{foo bar}
		string = %q(foo bar)
		string = %q<foo bar>
	# end #
	
	# :basics: Escape a single quote #
		string = 'fo\'o b\'ar'
	# end #
	
	# :basics: Multiline strings #
		string = <<"EOF"
		Multi
		line
		terminated by 'EOF' on a line by itself
EOF
	# end #
# end #

# :specimen: string.substrings #
	# :substrings: Retrieve parts of a string #
		string = 'foo bar, this is an example string'
		string[0, 1] # => "f"
		string[5, 2] # => "ar"
		string[15..-1] # => "s an example string"
		string[-1, 1] # => "g"
		string[-6..-1] # => "string"
		string[-5, 3] # => "tri"
	# end #
	
	# :substrings: Modify parts of a string #
		string[0, 3] = 'bar' # => "bar bar, this is an example string"
		string[0, 1] = '' # => "ar bar, this is an example string"
	# end #
# end #

# :specimen: string.defaults #
	# :defaults: Set string defaults #
		boolean = false
		string = boolean || 'foo' # => "foo"
		boolean = true
		string = boolean || 'foo' # => true
	# end #
	
	# :defaults: Set strings if not already set #
		string = nil
		string ||= 'foo' # => "foo"
		string ||= 'bar' # => "foo"
	# end #
# end #

# :specimen: string.general #
	# :general: Reversing a string #
		string = 'foo'
		string.reverse # => "oof"
	# end #
	
	# :general: String case #
		string = 'foo'
		string.upcase # => "FOO"
		string.downcase # => "foo"
		string.capitalize # => "Foo"
	# end #
	
	# :general: Trimming strings #
		string = '    foobar '
		string.strip # => "foobar"
	# end #
# end #
