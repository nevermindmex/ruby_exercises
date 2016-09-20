def sec_to_lifetime
  # years = (x.to_f/31556926) - ((x.to_f%31556926)/31556926)
  # There's no specific reference time, so i used average values.
  secs = gets.to_i
  mins, secs = secs.divmod 60
  hours, mins = mins.divmod 60
  days, hours = hours.divmod 24
  mounths, days = days.divmod 30
  years, mounths = mounths.divmod 12
  # return days.to_i
  puts "Ur age is
   #{years.to_i} years
   #{mounths.to_i} mounths
   #{days.to_i} days
   #{hours.to_i} hours
   #{mins.to_i} mins
   #{secs.to_i} secs!"
end

def num_plus_one(x)
  x = x.to_i + 1
  return x
end

def words_in_str(x)
  a = x.split(" ")
  x = a.size
  return x
end

def name_validate(x)
  loop do
    if words_in_str(x) == 3
	  return x
	  break
	  else
    puts 'Incorrect full name, please type it correctly'
		x = gets
	  end
  end
end

# first ex
puts 'Ur full name?'
name = gets
puts "Greetings, #{name_validate(name).chomp}!"

# second ex
puts 'Let me know ur favorite number'
favorite_number = gets
more_favorite_number = num_plus_one(favorite_number)
puts "Ok, dat's rly good num, but i think - #{more_favorite_number} will be better, as it bigger and cooler! =) "

# third ex
puts 'Please, type ur age in seconds'
sec_to_lifetime
