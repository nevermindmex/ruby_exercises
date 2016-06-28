def sec_to_lifetime(x)
	#years = (x.to_f/31556926) - ((x.to_f%31556926)/31556926)
	#Конкретного времени начала отсчета нет, поэтому воспользовался средними данными о количестве секунд в месяце и году.
	years = x.to_i/31556926
	mounths = (x.to_f%31556926)/2629743
	days = (x.to_f%31556926)%2629743/86400
	hours = ((x.to_f%31556926)%2629743)%86400/3600
	mins = (((x.to_f%31556926)%2629743)%86400)%3600/60
	secs = (((x.to_f%31556926)%2629743)%86400)%3600%60
	#return days.to_i
	puts "Ur age is #{years.to_i} years, #{mounths.to_i} mounths, #{days.to_i} days, #{hours.to_i} hours, #{mins.to_i} mins, #{secs.to_i} secs!"
end

def num_plus_one(x)
	return x.to_i+1
end

def words_in_str(x)
	a = x.split(" ")
	return a.size
end

def name_validate(x)
	loop do		
		if (words_in_str(x) == 3) then
			return x
			break
		else
			puts "Incorrect full name, please type it correctly"
			x = gets()
		end
	end
end


# first ex
puts ("Ur full name?")
name = gets()
puts ("Greetings, #{name_validate(name).chomp}!")


#second ex
puts ("Let me know ur favorite number")
favorite_number = gets()
more_favorite_number = num_plus_one(favorite_number)
puts ("Ok, dat's rly good num, but i think - #{more_favorite_number} will be better, as it bigger and cooler! =)")

#third ex
puts "Please, enter ur age in seconds"
his_age_in_sec = gets()
his_age_in_years = sec_to_lifetime(his_age_in_sec)

