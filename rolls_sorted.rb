results = []
10.times do
	result = Random.rand(1..6)
  results.push(result)
end

results = results.sort

results.each do |result|
 p "The result of your roll is #{result}"
end
