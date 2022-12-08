defmodule AdventOfCode.Day do
  @callback sample_inputs() :: [String.t()]
  @callback result(input :: String.t()) :: {pos_integer(), pos_integer()}
  @callback advent_info() :: %{year: pos_integer(), day: pos_integer()}

  defmacro __using__(_opts) do
    quote do
      import unquote(__MODULE__)
      @behaviour unquote(__MODULE__)

      @before_compile unquote(__MODULE__)

      @advent_info __MODULE__
                   |> Module.split()
                   |> Enum.slice(-2..-1)
                   |> Enum.reduce(%{}, fn x, acc ->
                     case x do
                       "Year" <> n ->
                         Map.put(acc, :year, String.to_integer(n))

                       "Day" <> n ->
                         Map.put(acc, :day, String.to_integer(n))

                       _ ->
                         acc
                     end
                   end)

      def advent_info, do: @advent_info

      def result(_input), do: nil
      defoverridable result: 1
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      @sample_inputs Regex.scan(~r/```(.*?)```/s, String.trim(@moduledoc))
                     |> Enum.map(&List.last/1)
                     |> Enum.map(&String.trim/1)

      def sample_inputs, do: @sample_inputs
    end
  end
end
