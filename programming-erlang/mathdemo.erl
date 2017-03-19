-module(mathdemo).
-export([start/0,absolute_value/1]).

start() -> io:fwrite(integer_to_list(mathdemo:absolute_value(940))).

absolute_value(Number) when Number < 0 -> -Number;
absolute_value(Number) when Number == 0 -> 0;
absolute_value(Number) when Number > 0 -> Number.