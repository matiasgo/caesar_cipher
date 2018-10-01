def caesar_cipher
	puts 'Enter a word or phrase'
	str = gets.chomp
	puts 'Enter a number'
	shift =gets.chomp.to_i 

	str_array = str.split(//)
	solution = []
	for i in str_array
		if i =~ /[A-Z]/
			i = (((i.ord-'A'.ord) + shift) % 26 + 'A'.ord).chr
		elsif i =~ /[a-z]/
			i = (((i.ord-'a'.ord) + shift) % 26 + 'a'.ord).chr
		end
		solution.push i
	end
	output = solution.join
	puts output
end

caesar_cipher()