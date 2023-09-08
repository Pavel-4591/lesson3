-module(lesson3_task02).

-export([words/1]).

words(BinText) ->
    words(BinText,<<>>,[]).

words(<<>>, Acc,Acc2) ->
    NewAcc2= Acc2 ++ [Acc],
    NewAcc2;

words(<<" ", L/binary>>, Acc,Acc2) ->
    NewAcc2= Acc2 ++ [Acc],
    words(L,<<>>,NewAcc2);

words(<<X, L/binary>>, Acc,Acc2) ->
    words(L, <<Acc/binary, X>>,Acc2).