-module(lesson3_task01).

-export([first_word/1]).

first_word(BinText) ->
    first_word(BinText,<<>>).

first_word(<<" ", _L/binary>>, Acc) ->
    Acc;

first_word(<<X, L/binary>>, Acc) ->
    first_word(L, <<Acc/binary, X>>).