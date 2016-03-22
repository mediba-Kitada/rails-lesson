def judge(a,b)
	p a,b
	janken = %W(goo choki paaa)
	puts "draw" if a == b
	case [a,b]
	  when [0,1],[1,0]
			puts janken[0]
		when [0,2],[2,0]
			puts janken[2]
		when [1,2],[2,1]
			puts janken[1]
	end
end

print "さいしょは:"
human = gets.chomp.to_i
computer = rand(3)
puts judge(human,computer)

