class StringCalculator
  def add(numbers)
    return 0 if numbers.strip.empty?

    nums = parse_numbers(numbers)
    check_for_negatives(nums)
    nums.sum
  end

  private

  def parse_numbers(numbers)
    delimiter = /,|\n/
    if numbers.start_with?("//")
      header, numbers = numbers.split("\n", 2)
      custom_delimiter = header[2..]
      delimiter = Regexp.new(Regexp.escape(custom_delimiter))
    end
    numbers.split(delimiter).map(&:to_i)
  end

  def check_for_negatives(nums)
    negatives = nums.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(', ')}" unless negatives.empty?
  end
end
