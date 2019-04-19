defmodule Problem do
  
  def solve do
    range = 1..100
    square_of_sum(range) - sum_of_squares(range)
  end

  def sum_of_squares(seq) do
    Enum.reduce(seq, 0, &(&1*&1 + &2))
  end

  def square_of_sum(seq) do
    sum = Enum.reduce(seq, 0, &(&1 + &2))
    sum * sum
  end
end


IO.puts Problem.solve