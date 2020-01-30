class Game 
  attr_accessor :arr_board_case
  def initialize
    @arr_board_case =[]
  end
  def init_players
    @player1 = Player.new
    @player1.ask_name
    @player1.choice_sign
    
    @player2 = Player.new
    @player2.ask_name
    @player2.choice_sign
  end

  def init_game
    
    n = 1
    while n < 10
      @arr_board_case << BoardCase.new(n)
      n += 1
    end
    @new_board = Board.new(@arr_board_case)
    @new_board.def_position
    @new_board.board_view
    @new_game = Game.new
   
  end

  def change_board_1
    puts " #{@player1.name_player} quelle case choisissez vous ?"
    z = gets.chomp
    @arr_board_case.each do |board_case|
      if z == board_case.position
        board_case.value = @player1.sign_player
      end
    end
    @new_board.board_view
  end
  def change_board_2
    puts " #{@player2.name_player} quelle case choisissez vous ?"
    z = gets.chomp
    @arr_board_case.each do |board_case|
      if z == board_case.position
        board_case.value = @player2.sign_player
      end
    end
    @new_board.board_view
  end
  
  def control_win?
    
    arr_test = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A1" && board_case.value == "X"
        arr_test << board_case.value
      elsif board_case.position == "A2" && board_case.value == "X"
        arr_test << board_case.value
      elsif board_case.position == "A3" && board_case.value == "X"
        arr_test << board_case.value
      end 
    end
    
    if arr_test.length == 3 
    puts "win"
    Application.new
    end
    
    
  end

end
