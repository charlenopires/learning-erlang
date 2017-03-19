-module(message_router).
-author(charlenopires).
-compile(export_all).

start(PrintFun) ->
  spawn(message_router, route_messages, [PrintFun]).

stop(RouterPID) ->
  RouterPID ! shutdown.

send_chat_message(RouterPID, Addresse, MessageBody) ->
  RouterPID ! {send_chat_msg, Addresse, MessageBody}.

route_messages(PrintFun) ->
  receive
    {send_chat_msg, Addresse, MessageBody} ->
      Addresse ! {recv_chat_msg, MessageBody},
      route_messages(PrintFun);
    {recv_chat_msg, MessageBody} ->
      % io:format("Received: ~p~n", [MessageBody]);
      PrintFun(MessageBody);
    Oops ->
      io:format("Warning! Received: ~p~n", [Oops]),
      route_messages(PrintFun)
  end.
