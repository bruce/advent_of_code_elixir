defmodule AdventOfCode.DayTest do
  use ExUnit.Case

  defmodule Example.Year1.Day2 do
    use AdventOfCode.Day

    @moduledoc """
    Here is some text.

    ```
    Single Line Sample
    ```

    Text

    ```
    Multi-line Sample

    Baseline
      Indented
    ```

    Text
    """
  end


  test "sample_inputs/0" do
    assert example().sample_inputs() == [
      "Single Line Sample",
      "Multi-line Sample\n\nBaseline\n  Indented"
    ]
  end

  test "advent_info/0" do
    assert example().advent_info() == %{year: 1, day: 2}
  end

  defp example, do: Example.Year1.Day2
end
