defmodule AdventOfCode.Year2022.Day1Test do
  alias AdventOfCode.Year2022.Day1
  use ExUnit.Case

  test "result/1" do
    result =
      Day1.sample_inputs()
      |> List.first()
      |> Day1.result()

    assert result == [24000, 45000]
  end
end
