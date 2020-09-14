def start
	puts "Welcome to the two player math game"
	puts "player one, choose your name: "
	print "> "
	@player1 = Player.new($stdin.gets.chomp)
	puts "player one: #{@player1}"
	puts "player two, choose your name: "
	print "> "

	@player2 = Player.new($stdin.gets.chomp)
	puts "player two: #{@player2}"
	# @players=[@player1, @player2]
	# @round=1
end

puts start