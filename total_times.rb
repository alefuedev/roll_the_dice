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

results = []
total_rolls ={}

permutations.each do |comb|
	result = 0
	comb.each { |num|result+=num }
	results.push(result)
end

#Results uniq to reduce the duplicate numbers
#the key of total_rolls is num,
#the value of the hash is the cjount of numbers insde of the array results.

results.uniq.each do |num|
	total_rolls[num] = results.count(num) 	
end

#loop inside of the hash 
total_rolls.each do |key, value|
	p "#{key} occurs #{value} times."
end

