def janken(i = 3)
	i = rand(3)
	case i 
	when 0
		puts "ぐー"
	when 1
		puts "ちょき"
	when 2
		puts "パー"
	end
end

10.times do |n|
	# sample関数便利
  puts janken
end

