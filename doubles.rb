dice_one = Random.rand(1..6)
dice_two = Random.rand(1..6)
p "Your rolled #{dice_one} and #{dice_two}."

if dice_one == dice_two
	p "Doubles!"
else
	p "Your total is #{dice_one + dice_two}."
end
