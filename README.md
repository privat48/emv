Credit Card Validation
======================

An Erlang module for testing credit card numbers.

You can also run a credit card validation server. The configuration
can be found in config/server_config.erl

To start the server use:

    rebar get-deps
    make server

The validation example url is:

    http://localhost:8800/credit_card_server:validate?4019100110000006

or in repl:

    2> credit_card:type("4019100110000006").
    visa

and Result:

    {visa,"4019100110000000",true}

Credits
-------

Maxim Sokhatsky
