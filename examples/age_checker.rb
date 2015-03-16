def checker(age)
	if age == 21
		puts "Welcome. Have a good time. Enjoy a free drink at the bar"
	elsif age > 21
		puts "Welcome. So glad to have you here!"
	else
		puts "Sorry. You are too young. Come back when you are older."
	end
	puts "Thank you for coming!"
end

print "age 21: "
checker(21)
print "age 18: "
checker(18)
print "age 64: "
checker(64)