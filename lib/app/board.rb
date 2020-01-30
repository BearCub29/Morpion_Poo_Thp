class Board
  attr_accessor :arr_board_case
  def initialize (arr_board_case)
    @arr_board_case = arr_board_case
  end
  def def_position
    @arr_board_case.each do |board_case|
      if board_case.position.include?("A1")
        @A1 = board_case
      elsif board_case.position.include?("A2")
        @A2 = board_case
      elsif board_case.position.include?("A3")
        @A3 = board_case
      elsif board_case.position.include?("B1")
        @B1 = board_case
      elsif board_case.position.include?("B2")
        @B2 = board_case
      elsif board_case.position.include?("B3")
        @B3 = board_case
      elsif board_case.position.include?("C1")
        @C1 = board_case
      elsif board_case.position.include?("C2")
        @C2 = board_case
      elsif board_case.position.include?("C3")
        @C3 = board_case
      end
    end
  end
  def board_view
    puts "-" * 50
    puts " " * 50
    print " " *19
    print "#{@A1.value}"
    print " " 
    print "|"
    print " "
    print "#{@A2.value}"
    print " " 
    print "|"
    print " "
    print "#{@A3.value}"
    puts " " *19
    print " " *19
    print "-" *12
    puts " " *19
    print " " *19
    print "#{@B1.value}"
    print " " 
    print "|"
    print " "
    print "#{@B2.value}"
    print " " 
    print "|"
    print " "
    print "#{@B3.value}"
    puts " " *19
    print " " *19
    print "-" *12
    puts " " *19
    print " " *19
    print "#{@C1.value}"
    print " " 
    print "|"
    print " "
    print "#{@C2.value}"
    print " " 
    print "|"
    print " "
    print "#{@C3.value}"
    puts " " *19
    puts " " * 50
    puts "-" * 50
  end
end