class StringCalculator
  def self.add(numbers)
    return 0 if numbers.strip.empty?

    delimiter = /,|\n/
    numbers.split(delimiter).map(&:to_i).sum
  end
end
