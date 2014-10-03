-module (credit_card_server).
-compile(export_all).

start() ->
  inets:start(),
  inets:start(httpd, [{proplist_file, "config/server_config.erl"}]),
  io:format("Credit card validation server started.").

validate(SessID, Env, _Input) ->
  N = dict:fetch(query_string, dict:from_list(Env)),
  Output = io_lib:format("~p~n", [{credit_card:type(N), N, credit_card:is_valid(N)}]),
  mod_esi:deliver(SessID, Output).
