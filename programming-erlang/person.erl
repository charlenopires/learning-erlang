-module(person).
-export([init/1]).

start() ->
  Joe  = spawn(person, init, ["Joe"])