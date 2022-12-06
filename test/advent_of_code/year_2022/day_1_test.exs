defmodule AdventOfCode.Year2022.Day1Test do
  alias AdventOfCode.Year2022.Day1
  use ExUnit.Case

  test "result/1" do
    result =
      Day1.sample_inputs()
      |> List.first()
      |> Day1.result()

    assert result == %{part_1: 24000, part_2: 45000}
  end
end
