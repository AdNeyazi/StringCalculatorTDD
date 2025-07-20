class StringCalculator
  def self.add(numbers)
    return 0 if numbers.strip.empty?

    delimiter = /,|\n/
    if numbers.start_with?('//')
      header, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(header[2..-1])
    end

    nums = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives = nums.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    nums.sum
  end
end
