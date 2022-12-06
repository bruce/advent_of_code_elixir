defmodule AdventOfCode.Year2022.Day2Test do
  alias AdventOfCode.Year2022.Day2
  use ExUnit.Case

  test "score/1 round ties" do
    assert Day2.score({:rock, :rock}) == 4
    assert Day2.score({:paper, :paper}) == 5
    assert Day2.score({:scissors, :scissors}) == 6
  end

  test "score/1 round losses" do
    assert Day2.score({:paper, :rock}) == 1
    assert Day2.score({:scissors, :paper}) == 2
    assert Day2.score({:rock, :scissors}) == 3
  end

  test "score/1 round wins" do
    assert Day2.score({:scissors, :rock}) == 7
    assert Day2.score({:rock, :paper}) == 8
    assert Day2.score({:paper, :scissors}) == 9
  end

  test "score/1 game" do
    assert Day2.score([{:rock, :rock}, {:paper, :rock}, {:scissors, :rock}]) == 12
  end

  test "score/1 part 1 strategy" do
    assert Day2.score(sample_input() |> Day2.BasicStrategy.from_string()) == 15
  end

  test "score/1 part 2 strategy" do
    assert Day2.score(sample_input() |> Day2.OutcomeStrategy.from_string()) == 12
  end

  test "result/1" do
    assert Day2.result(Day2.sample_inputs() |> List.first()) == [15, 12]
  end

  defp sample_input do
    Day2.sample_inputs()
    |> List.first()
  end
end
