class Application 
  @new_game = Game.new 
  @new_game.page_start
  @new_game.init_players
  @new_game.init_board
  while  2>1 do
    @new_game.change_board_1
    @new_game.control_win? 
    @new_game.change_board_2
    @new_game.control_win? 
  end
  @new_game.end
end
