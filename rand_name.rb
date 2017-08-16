# def names_pair(names)
# 		sets = names.shuffle.each_slice(2).to_a
# 	if names.length % 2 == 0 
# 	else
# 		extra = sets.pop
# 		extra = extra[0]
# 		sets[0] << extra
# 	end 
# 	# p sets
# 	sets
# end

def names_two(names)
		names = names.map(&:capitalize)
		little_array = []
		sets = names.shuffle
	if names.length % 2 == 0
		a = names.length/2
		a.times do 
		sets_1 = sets.pop(2).to_a
		little_array << sets_1
		set_1 = 0
	end

	else 
		extra = sets.pop
		b = names.length/2
		b.times do 
		sets_1 = sets.pop(2).to_a
		little_array << sets_1
		set_1 = 0
	end
	little_array[0] << extra
end
clean_array = clean(little_array)
p clean_array
end

def clean(names)
        group = ""
    names.each do |pair|
        if pair.include? (pair[2])
            group << pair[0] + ", " + pair[1] + ", and " + pair[2] + "<br>"
        else
            group << pair[0] + " and " + pair[1] + "<br>"
        end
    end
    group
end


# def name_two(names)
# sets = names.map{|s| s.split(',')}
# sets.to_a
# p sets
# end


# def name_two(names)
# sets = names.map { |data| data.split(',') }
# p sets
# end

# def name_two(names)
# sets = names.shuffle.combination(2).to_a
# sets_1 = sets.uniq
# p sets_1
# end 
names_two(["a","b","c","d","e"])