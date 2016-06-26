def sec_to_years(x)
	return x.to_f/31556926
end

def num_plus_one(x)
	return x.to_i+1
end



# first ex
puts ("Ur name?")
name = gets()
puts ("Greetings #{name}")

#second ex
puts ("Let me know ur favorite number")
favorite_number = gets()
more_favorite_number = num_plus_one(favorite_number)
puts ("Ok, dat's rly good num, but i think - #{more_favorite_number} will be better, as it bigger and cooler! =)")

#third ex
puts "Please, enter ur age in seconds"
his_age_in_sec = gets()
his_age_in_years = sec_to_years(his_age_in_sec)
puts "Now i try to tell u ur age in years \nUr age is #{his_age_in_years} years"

