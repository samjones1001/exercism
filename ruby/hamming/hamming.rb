class Hamming
  def self.compute(strand_a, strand_b)
    validate_args(strand_a, strand_b)
    strand_a.chars.zip(strand_b.chars).count { |a, b| a != b}
  end

  class << self
    private

    def validate_args(arg_a, arg_b)
      unless arg_a.length == arg_b.length
        raise ArgumentError.new("Stand lengths must be equal")
      end
    end
  end
end
