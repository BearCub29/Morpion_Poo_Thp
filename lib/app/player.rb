class Player 
  attr_accessor :name_player, :sign_player
  def ask_name
    puts " "
    puts "Quel est votre nom?\n\n"
    @name_player = gets.chomp
  end
  def choice_sign
    puts " "
    puts "#{@name_player} choisissez entre X) et O) :\n "
    @sign_player = gets.chomp
    if @sign_player == "X)" 
      puts " "
      puts "Bravo,eXcellent choiX!!!"
    elsif @sign_player == "O)"
      puts " "
      puts "BravO,excellent chOix!!!"
    else
      puts " "
      puts "Vous ne savez pa lire ?!!"
      choice_sign
    end
  end
=begin
  def control_sign?(player)
    if player.sign_player == "X" || player.sign_player == "O"
      return true
    else
      return false
    end
  end
=end
end