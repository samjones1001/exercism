class Raindrops
  def self.convert(number)
    output = ''
    output += "Pling" if is_divisible_by(number, 3)
    output += "Plang" if is_divisible_by(number, 5)
    output += "Plong" if is_divisible_by(number, 7)
    output.empty? ? number.to_s : output
  end

  class << self
    private
    def is_divisible_by(number, divisor)
      number % divisor == 0
    end
  end
end
