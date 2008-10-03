# :specimen: file.general #
	# :general: Open a file #
		# Both do the same thing:
		File.open 'foobar.txt'
		File.new 'foobar.txt'
	# end #
	
	# :general: File modes #
		File.open 'foobar.txt', 'r' # read-only; prepends text; default
		File.open 'foobar.txt', 'r+' # read-write; prepends text
		File.open 'foobar.txt', 'w' # write-only; overwrites or creates new file if nonexistent
		File.open 'foobar.txt', 'w+' # read-write; overwrites or creates new file if nonexistent
		File.open 'foobar.txt', 'a' # write-only; appends text to file or creates new file if nonexistent
		File.open 'foobar.txt', 'a+' # read-write; appends text to file or creates new file if nonexistent
		File.open 'foobar.txt', 'b' # DOS/Windows only: binary mode
	# end #
	
	# :general: Expanding tildes in filenames #
		File.expand_path '~someuser' # => "/home/someuser" on Linux, or "/Users/someuser" on Macs
		File.expand_path '~someuser/foo' # => "/home/someuser/foo" or "/Users/someuser/foo"
	# end #
# end #

# :specimen: file.reading #
	# :reading: Read a file line-by-line #
		file = File.open 'foobar.txt'
		file.each do |line|
			
		end
		# or:
		file = File.open 'foobar.txt'
		while file.gets do
			# line's contents are stored in $_
		end
	# end #
	
	# :writing: Read an entire file into a variable #
		file = File.read 'foobar.txt'
	# end #
# end #

# :specimen: file.writing #
	# :writing: Write to a file #
		file = File.open 'foobar.txt', 'w'
		file.puts 'This is an example'
		file.close
	# end #
	
	# :writing: Creating a lockfile #
		file = File.open 'foobar.txt', 'w+'
		file.flock File::LOCK_EX
		
		File::LOCK_EX # Exclusive lock. Only one process may hold an exclusive lock for a given file at a time.
		File::LOCK_NB # Don't block when locking. May be combined with other options.
		File::LOCK_SH # Shared lock. Multiple processes may each hold a shared lock for a given file at the same time.
		File::LOCK_UN # Unlock a previously locked file.
	# end #
	
	# :writing: Flush output #
		file = File.open 'foobar.txt', 'w'
		file.puts 'This text will be flushed..'
		file.flush
	# end #
# end #

# :specimen: file.temporary #
	# :temporary: Create a temporary file #
		require 'tempfile'
		file = Tempfile.new 'foo'
	# end #
	
	# :temporary: Write to a temporary file #
		require 'tempfile'
		file = Tempfile.new 'foo'
		file.puts 'This is some text'
		file.flush
	# end #
# end #
