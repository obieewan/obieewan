defmodule ListRangePositive do


  def list_length(list) do
    list_length(list, 0)
  end


  def list_length([_head | rest], acc) do
    new_acc = acc + 1
    list_length(rest, new_acc)
  end


  def range(from, to) do
    range(from, to, [])
  end

  defp range(from, to, result) when from > to do
    result
  end

  defp range(from, to, result) do
    new_to = to - 1
    range(from, new_to, [to | result])
    |> IO.inspect
  end

  def positive(list) do
    filter_positive(list, [])
  end

  defp filter_positive([], result) do
    Enum.reverse(result)
  end

  defp filter_positive([head | rest], result) when head > 0 do
    filter_positive(rest, [ head | result])
  end

  defp filter_positive([_ | tail], result) do
    filter_positive(tail, result) 
  end




end

