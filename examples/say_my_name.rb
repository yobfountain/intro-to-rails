def greeting(name)
	puts "Hello " + name + ". Good to meet you."
end

def get_name
	print "Hello! Please tell me your name: "
	gets.chomp
end

result = get_name
greeting(result)