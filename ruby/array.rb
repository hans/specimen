# :specimen: array.general #
	# :general: Creating arrays #
		array = [1, 2, :a, "str"]
		array = Array.new(:value, 3) # => [:value, :value, :value]
		array = %w{list of strings} # => ["list", "of", "strings"]
	# end #
	
	# :general: Looping through an array #
		array = [:a,:b,:c]
		
		array.each do |element|
		  # Do something here
		end
		
		array.each_with_index { |element,i|
		  # Do something here
		}
	# end #
# end #

# :specimen: array.manipulation #
	# :general: Joining two arrays #
		a = [1,2,3]
		b = [4,5,6]
		c = a.concat(b) # => [1,2,3,4,5,6]
	# end #
	
	# :general: Reverse an array #
		a = [1,2,3]
		a.reverse! 
	# end #
	
	# :general: Sort an array #
		a = [1,3,2]
		a.sort!
	# end #
	
	# :general: Shuffle an array #
		a = [1,2,3,4]
		a.sort! { |a,b| (rand*2)-1 }
	# end #
# end #
