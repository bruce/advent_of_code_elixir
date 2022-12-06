defmodule AdventOfCode.Year2022.Day2.BasicStrategy do
  use AdventOfCode.Year2022.Day2.Strategy, %{
    "A" => :rock,
    "B" => :paper,
    "C" => :scissors,
    "X" => :rock,
    "Y" => :paper,
    "Z" => :scissors
  }

  alias AdventOfCode.Year2022.Day2

  @type config :: [{Day2.hand(), Day2.hand()}]

  @type t :: %__MODULE__{
          config: config
        }

  def to_game(strategy) do
    strategy.config
  end

  @doc """
  This strategy's configuration is structured just like a game, so it uses the
  game scoring logic.
  """
  def score(strategy) do
    strategy.config
    |> Day2.score()
  end
end
