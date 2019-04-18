defmodule Problem do

  def solve do
    products()
      |> Enum.filter(&is_palindrome(&1))
      |> Enum.max
  end
  
  defp is_palindrome(number) do
    string = Integer.to_string(number)
    string == String.reverse(string)
  end

  defp products do
    for first  <- 101..999,
        second <- 101..999,
        do: first * second
  end
end


IO.puts Problem.solve()