# Start ExUnit
ExUnit.start()

defmodule LearningTest do
  use ExUnit.Case, async: true

  test 'sample test' do
    assert 1 + 1 == 2
  end

  test "oppsite of assert" do
    refute 1 + 1 == 3
  end

  test :assert_raise do
    assert_raise ArithmeticError, fn ->
      1 + "x"
    end
  end

  test "assert_in_delta asserts that val1 and val2 differ by less than delta." do
    assert_in_delta 1, # actual
                    5, # expected
                    6  # delta
  end
end
