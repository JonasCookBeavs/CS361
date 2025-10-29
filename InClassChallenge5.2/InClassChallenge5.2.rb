class MathOperations
  def add(a, b)
    0
  end

  def divide(a, b)
    0
  end

  def sum_array(a)
    0
  end
end

require "minitest/autorun"

class TestMath < Minitest::Test
  def setup
    @math = MathOperations.new
  end

  # Addition Tests
  def test_add_two_numbers
    assert_equal 5, @math.add(2, 3)
  end

  def test_add_two_floats
    assert_equal 7.4, @math.add(3.2, 4.2)
  end

  def test_add_invalid_input
    assert_raises(SyntaxError) {@math.add("Number", 17)}
  end

  # Division Tests
  def test_divide_two_numbers
    assert_equal 10, @math.divide(30, 3)
  end

  def test_divide_into_float
    assert_equal 2.5, @math.divide(5, 2)
  end
  
  def test_divide_by_zero_error
    assert_raises(ZeroDivisionError) {@math.divide(5, 0)}
  end

  def test_divide_invalid_input
    assert_raises(SyntaxError) {@math.divide(15, "Five")}
  end

  # Sum Array Tests
  def test_sum_array_of_numbers
    assert_equal 10, @math.sum_array([1, 2, 3, 4])
  end
  
  def test_sum_array_with_floats
    assert_equal 12.3, @math.sum_array([7.1, 4.2, 1.0])
  end
  
  def test_array_contains_invalid_input
    assert_raises(SyntaxError) {@math.sum_array(["Bingle", 4, 5])}
  end

end