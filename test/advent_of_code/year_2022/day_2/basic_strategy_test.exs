defmodule AdventOfCode.Year2022.Day2.BasicStrategyTest do
  use ExUnit.Case

  alias AdventOfCode.Year2022.{Day2, Day2.BasicStrategy}

  test "from_string/1" do
    strategy =
      Day2.sample_inputs()
      |> List.first()
      |> BasicStrategy.from_string()

    assert strategy == %BasicStrategy{
             config: [{:rock, :paper}, {:paper, :rock}, {:scissors, :scissors}]
           }
  end
end
