class StringCalculator
  def add(numbers)
    return 0 if numbers.strip.empty?

    nums = parse_numbers(numbers)
    check_for_negatives(nums)
    nums.sum
  end
end
