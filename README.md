player_one - first player of the game, answers math questions, chooses numbers?
initialize - name

player_two - second player of the game, answers and chooses
initialize - name

current_player - player currently taking guesses

- method: lose life if wrong
- manage I/O

question - math question compiled by the numbers chosen between 1 and 20
initalize - question(first_number, second_number)

first_number - first number pick, added to question

second_number - second number pick, added to question

lives - each player starts with 3 lives, loses a life every wrong answer

new_scores - generated after each round to show the lives left of each player

- contains the game loop
- manages current_player
- manage I/O

end_game - called when one player loses all lives
