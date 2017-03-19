-module(ex1).
-export([say_something/2,start/0]).

say_something(What, 0) ->
  done;

say_something(What, Times) ->
  io:format("~p~n", [What]),
  say_something(What, Times - 1).

start() ->
  spawn(ex1, say_something, [hello, 3]),
  spawn(ex1, say_something, [goodbye, 3]).