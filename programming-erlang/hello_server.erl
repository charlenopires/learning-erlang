-module(hello_server).
-export([hello/0]).

hello() ->
  receive
    [FromPID, Who] ->
      case Who of
        robert -> FromPID ! "Hello Robert.";
        mike -> FromPID ! "Hello Mike.";
        joe -> FromPID ! "Hello Joe.";
        _ -> FromPID ! "I don't know you."
      end,
      hello()
  end.
