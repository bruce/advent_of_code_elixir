defmodule AdventOfCode.Year2022.Day2.Strategy do
  alias AdventOfCode.Year2022.Day2

  @callback to_game(Day2.strategy()) :: Day2.game()

  defmacro __using__(key) do
    quote do
      import unquote(__MODULE__)
      @behaviour unquote(__MODULE__)

      @key unquote(key)

      defstruct config: []

      @before_compile unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      @spec from_string(String.t()) :: t()
      def from_string(input) do
        rounds =
          input
          |> String.trim()
          |> String.split("\n")

        config =
          for round <- rounds do
            round
            |> String.split(" ")
            |> Enum.map(&Map.fetch!(@key, &1))
            |> List.to_tuple()
          end

        %__MODULE__{config: config}
      end
    end
  end
end
