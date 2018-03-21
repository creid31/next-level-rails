class Calculate < ApplicationRecord
  def self.add(num_a, num_b)
    num_a + num_b
  end

  def self.subtract(minuend, subtrahend)
    minuend - subtrahend
  end

  def self.divide(dividend, divisor)
    return nil if divisor.zero?
    dividend / divisor
  end

  def self.multiply(num_a, num_b)
    num_a * num_b
  end
end
