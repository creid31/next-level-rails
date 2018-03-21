require 'rails_helper'

RSpec.describe Calculate, type: :model do
  it 'adds two numbers accurately' do
    expected_value = 10
    actual_value = Calculate.add(3, 7)
    expect(actual_value).to eq(expected_value)
  end

  it 'subtracts two numbers accurately' do
    expected_value = 6
    actual_value = Calculate.subtract(10, 4)
    expect(actual_value).to eq(expected_value)
  end

  it 'multiplies two numbers accurately' do
    expected_value = 36
    actual_value = Calculate.multiply(2, 18)
    expect(actual_value).to eq(expected_value)
  end

  it 'divides two numbers accurately' do
    expected_value = 20
    actual_value = Calculate.divide(100, 5)
    expect(actual_value).to eq(expected_value)
  end

  it 'handles negative subtraction' do
    expected_value = -3
    actual_value = Calculate.subtract(12, 15)
    expect(actual_value).to eq(expected_value)
  end

  it 'handles dividing by 0' do
    expected_value = nil
    actual_value = Calculate.divide(100, 0)
  end
end
