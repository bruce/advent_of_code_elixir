defmodule AdventOfCode.Year2022.Day2.Strategy.Part2Test do
  use ExUnit.Case

  alias AdventOfCode.Year2022.{Day2, Day2.OutcomeStrategy}

  test "from_string/1" do
    strategy =
      Day2.sample_inputs()
      |> List.first()
      |> OutcomeStrategy.from_string()

    assert strategy == %OutcomeStrategy{
             config: [{:rock, :draw}, {:paper, :lose}, {:scissors, :win}]
           }
  end
end
