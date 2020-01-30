class BoardCase
  attr_accessor :position, :value
  def initialize(n)
    if n >= 1 && n <=3
      @position = "A#{n}"
      @value = "?"
    elsif n > 3 && n <= 6
      @position = "B#{n-3}"
      @value = "?"
    else
      @position = "C#{n-6}"
      @value = "?"
    end
  end
end