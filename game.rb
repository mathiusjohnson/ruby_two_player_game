require_relative './player'

class Game

	attr_accessor :player_one, :player_two

	def initialize
		@players = [nil, nil]
		@round=1
	end

	def next_round
		puts "-------------------"
		puts "\t round #: #{@round}"
		puts "-------------------"
		# puts @players.inspect
		@round += 1
	end

	def display_status
		puts "-------------------"
		puts "\t Game Status"
		puts "-------------------"
		@players.each{|player| puts "#{player.name}'s' Lives left: #{player.dead? ? 'DEAD' : player.lives}"}
		
		sleep 1
	end
	
	def winner
		winner = @players.find{|player| !player.dead?}
	end

	def game_over?
		@players.select{
			|player| 
			player.dead?
		}.count > 0 
	end

	def play
		puts "Welcome to the two player math game"

		puts "player one, choose your name: "
		print "> "
		@players[0] = Player.new($stdin.gets.chomp)
		puts "player one: #{@players[0].name}"

		puts "player two, choose your name: "
		print "> "
		@players[1] = Player.new($stdin.gets.chomp)
		puts "player two: #{@players[1].name}"

		until (game_over?) do
				puts "#{@players[0].name}'s turn"

				puts "choose first number: "
				print "> "
				choice_one = $stdin.gets.chomp

				puts "choose second number: "
				print "> "
				choice_two = $stdin.gets.chomp

				puts "Now tell me, #{@players[1].name}.. what is #{choice_one} + #{choice_two}?"
				print "> "
				answer = $stdin.gets.chomp
				sum = choice_one.to_i + choice_two.to_i
				puts "sum: #{sum}"

				if (answer.to_i == sum)
					puts "That is right! You live to see another day."
					display_status
				else
					puts "#{@players[0].loses_life}"
					puts "Sorry, wrong. #{@players[0].name} loses 1 life"
					next_round
					display_status
				end
				
				puts "#{@players[1].name}'s turn'"

				puts "choose first number: "
				print "> "
				choice_one = $stdin.gets.chomp

				puts "choose second number: "
				print "> "
				choice_two = $stdin.gets.chomp

				puts "Now tell me, #{@players[0].name}.. what is #{choice_one} + #{choice_two}?"
				print "> "
				answer = $stdin.gets.chomp
				sum = choice_one.to_i + choice_two.to_i
				puts "sum: #{sum}"

				if (answer.to_i == sum)
					puts "That is right! You live to see another day."
						next_round
				else
					puts "life: #{@players[1].loses_life}"
					puts "Sorry, wrong. #{@players[1].name} loses 1 life"
					next_round
				end
				display_status

				winner
		end
	end
end

