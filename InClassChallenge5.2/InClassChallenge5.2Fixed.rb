# Tests should have covered invalid inputs such as strings

require 'minitest/autorun'

class TestClassMethods < Minitest::Test
  def test_add
    assert_equal 5, add(2, 3)
    assert_equal 0, add(-1, 1)
    assert_equal -3, add(-1, -2)
  end

  def test_divide
    assert_equal 2, divide(6, 3)
    assert_equal 0, divide(0, 5)
    assert_raises(ZeroDivisionError) { divide(5, 0) }
  end

  def test_sum_array
    assert_equal 6, sum_array([1, 2, 3])
    assert_equal 0, sum_array([])
    assert_equal -6, sum_array([-1, -2, -3])
  end
end

def add(a, b)
  a + b
end

def divide(a, b)
  if b == 0
    raise ZeroDivisionError
  end
  a / b
end

def sum_array(array)
  total = 0
  for num in array do
    total += num
  end
  total
end