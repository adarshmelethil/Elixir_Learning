# https://projecteuler.net/problem=17
defmodule ProjectEuler do
  # 17 - Number letter counts
  # six = 3, seven = 5
  def textcount(n) do
    n_clean = 
      n
      |> Integer.undigits
      |> Integer.digits
    case n_clean do
      [1] -> 3
      [2] -> 3
      [3] -> 5
      [4] -> 4
      [5] -> 4
      [6] -> 3
      [7] -> 5
      [8] -> 5
      [9] -> 4
      [1,0] -> 3
      [1,1] -> 6
      [1,2] -> 6
      [1,3] -> 8
      [1,4] -> 8
      [1,5] -> 7
      [1,6] -> 7
      [1,7] -> 9
      [1,8] -> 8
      [1,9] -> 8
      [2,0] -> 6
      [3,0] -> 6
      [4,0] -> 5
      [5,0] -> 5
      [6,0] -> 5
      [7,0] -> 7
      [8,0] -> 6
      [9,0] -> 6
      [a,0,0] -> textcount([a]) +7
      [a,0,0,0] -> textcount([a]) + 8
      [a,b] -> textcount([a, 0]) + textcount([b])
      [a,b,c] -> textcount([a]) + 10 + textcount([b,c])
      [a,b,c,d] -> textcount([a]) + 8 + textcount([b,c,d])
    end
  end
  def num_to_text(n) do
    n_clean = 
      n
      |> Integer.undigits
      |> Integer.digits

    case n_clean do
      [1] -> "one"
      [2] -> "two"
      [3] -> "three"
      [4] -> "four"
      [5] -> "five"
      [6] -> "six"
      [7] -> "seven"
      [8] -> "eight"
      [9] -> "nine"
      [1,0] -> "ten"
      [1,1] -> "eleven"
      [1,2] -> "twelve"
      [1,3] -> "thirteen"
      [1,4] -> "fourteen"
      [1,5] -> "fifteen"
      [1,6] -> "sixteen"
      [1,7] -> "seventeen"
      [1,8] -> "eighteen"
      [1,9] -> "nineteen"
      [2,0] -> "twenty"
      [3,0] -> "thirty"
      [4,0] -> "forty"
      [5,0] -> "fifty"
      [6,0] -> "sixty"
      [7,0] -> "seventy"
      [8,0] -> "eighty"
      [9,0] -> "ninety"
      [a,0,0] -> num_to_text([a]) <> " hundred"
      [a,0,0,0] -> num_to_text([a]) <> " thousand"
      [a,b] -> num_to_text([a, 0]) <> " " <> num_to_text([b])
      [a,b,c] -> num_to_text([a]) <> " hundred and " <> num_to_text([b,c])
      [a,b,c,d] -> num_to_text([a]) <> " thousand " <> num_to_text([b,c,d])
    end
  end
  def number_text(n) do 
    n
    # |> IO.inspect
    |> Integer.digits
    |> textcount
    # |> textcount
    # |> IO.inspect
  end
  def number_letter_count(n) do 
    1..n
    |> Enum.map(&number_text(&1))
    |> Enum.sum
  end

  # 
end

# ProjectEuler.number_letter_count(1000)
IO.puts ProjectEuler.number_letter_count(1000)
# IO.puts ProjectEuler.n_to_t([9,9])
