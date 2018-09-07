dice_one = [1,2,3,4,5,6]
dice_two = [1,2,3,4,5,6]
dice = []

dice_one.each do |num|
	dice.push(num)
end

dice_two.each do |num|
	dice.push(num)
end

permutations = dice.permutation(2).to_a.sort

permutations = permutations.uniq

permutations.each do |comb|
	result = 0
	comb.each { |num|result+=num }
		print "Dice Roll: #{comb} Total:#{result}"
		puts
end
