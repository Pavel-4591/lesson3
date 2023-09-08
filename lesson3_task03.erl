-module(lesson3_task03).

-export([split/2]).

split(BinText, Dil) ->
    split(BinText, list_to_binary(Dil), <<>>, [], list_to_binary(Dil)).

split(<<>>, _Dil2, Acc, Acc2, _Dil3) ->
    NewAcc2= Acc2 ++ [Acc],
    NewAcc2;

split(<<H, L/binary>>, <<H, N/binary>>, Acc, Acc2, _Dil3) ->
    split(<<L/binary>>, <<N/binary>>, Acc, Acc2, _Dil3);

split(<<H, L/binary>>, <<>>, Acc, Acc2, Dil3) ->
    NewAcc2 = Acc2 ++ [Acc],
    split(<<H, L/binary>>, Dil3, <<>>, NewAcc2, Dil3);

split(<<H, L/binary>>, <<T, N/binary>>, Acc, Acc2, _Dil3) ->
    split(<<L/binary>>, <<T, N/binary>>, <<Acc/binary, H>>, Acc2, _Dil3).

