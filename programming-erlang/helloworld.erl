-module(helloworld).
-export([start/0]).

start() -> io:fwrite("Ola mundo!").