defmodule AdventOfCode.Year2022.Day2.OutcomeStrategy do
  use AdventOfCode.Year2022.Day2.Strategy, %{
    "A" => :rock,
    "B" => :paper,
    "C" => :scissors,
    "X" => :lose,
    "Y" => :draw,
    "Z" => :win
  }

  alias AdventOfCode.Year2022.Day2

  @type outcome :: :win | :lose | :draw

  @type config :: [{Day2.hand(), Day2.outcome()}]

  @type t :: %__MODULE__{
          config: config
        }

  def to_game(strategy) do
    for round <- strategy.config do
      case round do
        {opponent_hand, :win} ->
          {opponent_hand, Keyword.fetch!(Day2.hand_losses(), opponent_hand)}

        {opponent_hand, :lose} ->
          {opponent_hand, Keyword.fetch!(Day2.hand_wins(), opponent_hand)}

        {opponent_hand, :draw} ->
          {opponent_hand, opponent_hand}
      end
    end
  end
end
