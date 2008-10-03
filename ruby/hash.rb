# :specimen: hash.general #
	# :general: Create a hash #
		hash = {:apples => 4, 'oranges' => 8}
		hash = Hash[:apples, 4, 'oranges', 8]
		hash = Hash.new
	# end #
# end #

# :specimen: hash.manipulation #
	# :manipulation: Setting hash elements' values #
		hash = {:apples => 4, 'oranges' => 8}
		hash[:apples] += 3 # => 7
		hash['oranges'] += hash[:apples] # => 15
	# end #
	
	# :manipulation: Add an element to a hash #
		hash = {:apples => 4, 'oranges' => 8}
		hash[:bananas] = 6
	# end #
	
	# :manipulation: Checking if a hash contains a certain key #
		hash = {:apples => 4, 'oranges' => 8}
		hash.has_key? :apples # => true
		hash.has_key? 'grapes' # => false
	# end #
	
	# :manipulation: Delete a hash element #
		hash = {:apples => 4, 'oranges' => 8}
		hash.delete :apples # => {'oranges' => 8}
	# end #
	
	# :manipulation: Traverse a hash #
		hash = {:apples => 4, 'oranges' => 8}
		hash.each do |el|
			
		end
	# end #
	
	# :manipulation: Inverting a hash #
		hash = {:apples => 4, 'oranges' => 8}
		hash.invert # => {4 => :apples, 8 => 'oranges'}
	# end #
	
	# :manipulation: Merge two hashes #
		hash_a = {:apples => 4, 'oranges' => 8}
		hash_b = {:bananas => 5}
		merged = hash_a.clone.update hash_b # => {:apples => 4, 'oranges' => 8, :bananas => 5}
	# end #
# end #
