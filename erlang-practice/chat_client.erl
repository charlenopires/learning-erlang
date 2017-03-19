-module(chat_client).
-author(charlenopires).
-compile(export_all).

send_message(RouterPID, Addresse, MessageBody) ->
  message_router:send_chat_message(RouterPID, Addresse, MessageBody).

print_message(MessageBody) ->
  io:format("Received: ~p~n", [MessageBody]).
