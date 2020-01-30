require 'bundler'
Bundler.require
require 'pry'

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/boardcase'
require 'app/board'
require 'app/game'
require 'view/application'
#require 'view/show'



Application.new 



#------premier player






#-------controlwin
#-----deuxieme player
=begin
new_game.choice_case(player2)
new_game.change_board(arr_board_case,player2)
new_board.board_view
#-------controlwin
#-------end while

#end

=end

