defmodule AdventOfCode.Year2022.Day4Test do
  alias AdventOfCode.Year2022.Day4
  use ExUnit.Case

  @sample_input Day4.sample_inputs() |> List.first()

  test "result/1" do
    assert Day4.result(@sample_input) == {2, 4}
  end

  test "parse_assignment/1" do
    assert Day4.parse_assignment("1-4") == MapSet.new([1, 2, 3, 4])
  end
end
