class Game 
  attr_accessor :arr_board_case
  def initialize
    @arr_board_case =[]
  end
  def page_start
  puts "-" * 51
  print "|"
  print " " * 49
  puts "|"
  print "|"
  print " " * 21
  print "MORPION"
  print " " * 21
  puts "|"
  print "|"
  print " " * 21
  print "X) & O)"
  print " " * 21
  puts "|"
  print "|"
  print " " * 49
  puts "|"
  puts "-" * 51
  gets.chomp
  end
  def init_players
    @player1 = Player.new
    @player1.ask_name
    @player1.choice_sign
    @player2 = Player.new
    @player2.ask_name
    @player2.choice_sign
  end
  def init_board
    n = 1
    while n < 10
      @arr_board_case << BoardCase.new(n)
      n += 1
    end
    @new_board = Board.new(@arr_board_case)
    @new_board.def_position
    @new_board.board_view
  end
  def change_board_1
    puts " "
    puts " #{@player1.name_player} quelle case choisissez vous (EX : A1 ou B2) ?"
    z = gets.chomp
    @arr_board_case.each do |board_case|
      if z == board_case.position
        board_case.value = @player1.sign_player
      end
    end
    @new_board.board_view
  end
  def change_board_2
    puts " "
    puts " #{@player2.name_player} quelle case choisissez vous (EX : A1 ou B2)?"
    z = gets.chomp
    @arr_board_case.each do |board_case|
      if z == board_case.position
        board_case.value = @player2.sign_player
      end
    end
    @new_board.board_view
  end
  def control_win?
    arr_testAAA = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A1" && board_case.value == "X)" 
        arr_testAAA << board_case.value
      elsif board_case.position == "A2" &&  board_case.value == "X)" 
        arr_testAAA << board_case.value
      elsif board_case.position == "A3" && board_case.value == "X)" 
        arr_testAAA << board_case.value
      end
    end
    arr_testBBB = []
    @arr_board_case.each do |board_case|
      if board_case.position == "B1" &&  board_case.value == "X)" 
        arr_testBBB << board_case.value
      elsif board_case.position == "B2" &&  board_case.value == "X)" 
        arr_testBBB << board_case.value
      elsif board_case.position == "B3" &&  board_case.value == "X)" 
        arr_testBBB << board_case.value
      end
    end
    arr_testCCC = []
    @arr_board_case.each do |board_case|
      if board_case.position == "C1" &&  board_case.value == "X)" 
        arr_testCCC << board_case.value
      elsif board_case.position == "C2" &&  board_case.value == "X)" 
        arr_testCCC << board_case.value
      elsif board_case.position == "C3" &&  board_case.value == "X)" 
        arr_testCCC << board_case.value
      end
    end
    arr_testA1B1C1 = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A1" &&  board_case.value == "X)" 
        arr_testA1B1C1 << board_case.value
      elsif board_case.position == "B1" &&  board_case.value == "X)" 
        arr_testA1B1C1 << board_case.value
      elsif board_case.position == "C1" &&  board_case.value == "X)" 
        arr_testA1B1C1 << board_case.value
      end
    end
    arr_testA2B2C2 = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A2" &&  board_case.value == "X)" 
        arr_testA2B2C2 << board_case.value
      elsif board_case.position == "B2" &&  board_case.value == "X)" 
        arr_testA2B2C2 << board_case.value
      elsif board_case.position == "C2" &&  board_case.value == "X)" 
        arr_testA2B2C2 << board_case.value
      end
    end
    arr_testA3B3C3 = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A3" &&  board_case.value == "X)" 
        arr_testA3B3C3 << board_case.value
      elsif board_case.position == "B3" &&  board_case.value == "X)" 
        arr_testA3B3C3 << board_case.value
      elsif board_case.position == "C3" &&  board_case.value == "X)" 
        arr_testA3B3C3 << board_case.value
      end
    end
    arr_testA1B2C3 = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A1" &&  board_case.value == "X)" 
        arr_testA1B2C3 << board_case.value
      elsif board_case.position == "B2" &&  board_case.value == "X)" 
        arr_testA1B2C3 << board_case.value
      elsif board_case.position == "C3" &&  board_case.value == "X)" 
        arr_testA1B2C3 << board_case.value
      end
    end
    arr_testA3B2C1 = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A3" &&  board_case.value == "X)" 
        arr_testA3B2C1 << board_case.value
      elsif board_case.position == "B2" &&  board_case.value == "X)" 
        arr_testA3B2C1<< board_case.value
      elsif board_case.position == "C1" &&  board_case.value == "X)" 
        arr_testA3B2C1 << board_case.value
      end
    end
    arr_testDDD = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A1" && board_case.value == "O)" 
        arr_testDDD << board_case.value
      elsif board_case.position == "A2" &&  board_case.value == "O)" 
        arr_testDDD << board_case.value
      elsif board_case.position == "A3" && board_case.value == "O)" 
        arr_testDDD << board_case.value
      end
    end
    arr_testEEE = []
    @arr_board_case.each do |board_case|
      if board_case.position == "B1" &&  board_case.value == "O)" 
        arr_testEEE << board_case.value
      elsif board_case.position == "B2" &&  board_case.value == "O)" 
        arr_testEEE << board_case.value
      elsif board_case.position == "B3" &&  board_case.value == "O)" 
        arr_testEEE << board_case.value
      end
    end
    arr_testFFF = []
    @arr_board_case.each do |board_case|
      if board_case.position == "C1" &&  board_case.value == "O)" 
        arr_testFFF << board_case.value
      elsif board_case.position == "C2" &&  board_case.value == "O)" 
        arr_testFFF << board_case.value
      elsif board_case.position == "C3" &&  board_case.value == "O)" 
        arr_testFFF << board_case.value
      end
    end
    arr_testD1E1F1 = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A1" &&  board_case.value == "O)" 
        arr_testD1E1F1 << board_case.value
      elsif board_case.position == "B1" &&  board_case.value == "O)" 
        arr_testD1E1F1 << board_case.value
      elsif board_case.position == "C1" &&  board_case.value == "O)" 
        arr_testD1E1F1 << board_case.value
      end
    end
    arr_testD2E2F2 = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A2" &&  board_case.value == "O)" 
        arr_testD2E2F2 << board_case.value
      elsif board_case.position == "B2" &&  board_case.value == "O)" 
        arr_testD2E2F2 << board_case.value
      elsif board_case.position == "C2" &&  board_case.value == "O)" 
        arr_testD2E2F2 << board_case.value
      end
    end
    arr_testD3E3F3 = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A3" &&  board_case.value == "O)" 
        arr_testD3E3F3 << board_case.value
      elsif board_case.position == "B3" &&  board_case.value == "O)" 
        arr_testD3E3F3 << board_case.value
      elsif board_case.position == "C3" &&  board_case.value == "O)" 
        arr_testD3E3F3 << board_case.value
      end
    end
    arr_testD1E2F3 = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A1" &&  board_case.value == "O)" 
        arr_testD1E2F3 << board_case.value
      elsif board_case.position == "B2" &&  board_case.value == "O)" 
        arr_testD1E2F3 << board_case.value
      elsif board_case.position == "C3" &&  board_case.value == "O)" 
        arr_testD1E2F3 << board_case.value
      end
    end
    arr_testD3E2F1 = []
    @arr_board_case.each do |board_case|
      if board_case.position == "A3" &&  board_case.value == "O)" 
        arr_testD3E2F1 << board_case.value
      elsif board_case.position == "B2" &&  board_case.value == "O)" 
        arr_testD3E2F1<< board_case.value
      elsif board_case.position == "C1" &&  board_case.value == "O)" 
        arr_testD3E2F1 << board_case.value
      end
    end
    if arr_testAAA.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board 
    elsif arr_testBBB.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board
    elsif arr_testCCC.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board
    elsif arr_testA1B1C1.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board 
    elsif arr_testA2B2C2.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board 
    elsif arr_testA3B3C3.length == 3
      puts "You Winnnnnnnnnnnn!!!!" 
      self.init_board
    elsif arr_testA1B2C3.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board 
    elsif arr_testA3B2C1.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board 
    end
    if arr_testDDD.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board  
    elsif arr_testEEE.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board 
    elsif arr_testFFF.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board 
    elsif arr_testD1E1F1.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board
    elsif arr_testD2E2F2.length == 3 
      puts "You Winnnnnnnnnnnn!!!!"
      self.init_board
    elsif arr_testD3E3F3.length == 3
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board
    elsif arr_testD1E2F3.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board
    elsif arr_testD3E2F1.length == 3 
      puts " "
      puts "You Winnnnnnnnnnnn!!!!"
      puts " "
      self.init_board 
    end  
  end
  def end
    puts "-" * 51
    print "|"
    print " " * 49
    puts "|"
    print "|"
    print " " * 21
    print "BYE-BYE"
    print " " * 21
    puts "|"
    print "|"
    print " " * 21
    print "X) & O)"
    print " " * 21
    puts "|"
    print "|"
    print " " * 49
    puts "|"
    puts "-" * 51
    gets.chomp
    end
end
