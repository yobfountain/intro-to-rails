my_people = [{"name"=>"Brian", "gender"=>"male", "location"=>"Brooklyn"},
{"name"=>"Sally", "gender"=>"female", "location"=>"Manhattan"}]

my_hash = {"name" => "Brian"}
my_hash["name"] # returns "Brian"

my_people.each do |person|
	puts "Hello #{person["name"]}. You are from #{person["location"]}."
end