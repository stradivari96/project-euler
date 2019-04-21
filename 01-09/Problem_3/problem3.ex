defmodule Problem do
  def solve(n), do: _solve(n, 2)
  def _solve(n, n), do: n
  
  def _solve(n, factor) do
    case rem(n, factor) do
      0 -> _solve(div(n, factor), factor)
      _ -> _solve(n, factor + 1)
    end
  end
end

number = 600851475143

IO.puts Problem.solve(number)