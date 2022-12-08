defmodule AdventOfCode.Year2022.Day5Test do
  use ExUnit.Case

  alias AdventOfCode.Year2022.Day5

  @stacks [
    'ABC',
    'DE',
    '',
    'FG'
  ]

  """
  [D]
  [N] [C]
  [Z] [M] [P]
  1   2   3

  move 1 from 2 to 1
  move 3 from 1 to 3
  move 2 from 2 to 1
  move 1 from 1 to 2
  """

  test "parse/1" do
    assert parse(sample_input()) == {
             # Stacks
             ['DNZ', 'CM', 'P'],
             # Moves
             [
               {1, {2, 1}},
               {3, {1, 3}},
               {2, {2, 1}},
               {1, {1, 2}}
             ]
           }
  end

  test "move/3" do
    assert Day5.move(@stacks, 2, {1, 3}) == [
             'C',
             'DE',
             'BA',
             'FG'
           ]
  end

  test "generate_message/1" do
    assert Day5.generate_message(@stacks) == 'ADF'
  end

  test "result/1" do
    assert Day5.result(sample_input()) == {
             'ADF',
             :stub
           }
  end

  def sample_input do
    Day5.sample_inputs()
    |> List.first()
  end
end
