-module(print).
-export([start/0]).

start() -> So = "Ola", io:fwrite(So ++ " Mundo").