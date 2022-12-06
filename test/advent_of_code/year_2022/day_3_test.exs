defmodule AdventOfCode.Year2022.Day3Test do
  alias AdventOfCode.Year2022.Day3
  use ExUnit.Case

  test "priority/1" do
    assert Day3.priority(?a) == 1
    assert Day3.priority(?Z) == 52
  end

  test "parse/1" do
    assert Day3.parse("abcd") == [{[?a, ?b], [?c, ?d]}]
    assert Day3.parse(sample_input()) |> length() == 6
  end

  test "mispacked_item/1" do
    assert Day3.mispacked_item({[?a, ?b, ?c], [?Z, ?c, ?g]}) == ?c
  end

  test "result/1" do
    assert Day3.result("aBCaDN") == 1
  end

  defp sample_input do
    Day3.sample_inputs()
    |> List.first()
  end
end
