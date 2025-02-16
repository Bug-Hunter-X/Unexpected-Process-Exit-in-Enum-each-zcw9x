# Elixir Enum.each and Process.exit

This repository demonstrates a subtle error that can occur when using `Process.exit` within an `Enum.each` loop in Elixir.  Improperly using `Process.exit` can prematurely terminate iteration and lead to unexpected results.  The solution shows best practice for handling similar situations.