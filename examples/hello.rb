def say_hello
	puts "Hello World"
end

def greeting(name)
	puts "Hello " + name
end

def formal_greeting(name, last)
	puts "Hello #{name} #{last}. Good to meet you."
end

# Use hash to ignore something or add comment
# say_hello

# my_name = "Jake"
# greeting(my_name)

formal_greeting("Brian", nil)