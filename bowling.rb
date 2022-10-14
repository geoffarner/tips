class Score
  attr_reader :pins

  def initialize(pins)
    @pins = pins
  end

  def bowling_score
    index = 0
    total = 0
    while index < pins.length
      if pins[index] == "-"
        pins[index] = 0
        total += pins[index]
      else
        total += pins[index]
        index += 1
      end
    end
    return total
  end
end
