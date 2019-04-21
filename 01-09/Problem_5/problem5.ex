defmodule Problem do
  
  def solve do
    Stream.iterate(20, &(&1 + 20))
      |> Enum.find(fn(n) -> div_by_all?(11..20, n) end)
  end

  def div_by_all?(list, x) do
    Enum.all?(list, fn(n) -> rem(x, n) == 0 end)
  end
end


IO.puts Problem.solve