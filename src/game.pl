:- module('game', [game/0]).

:- use_module(gui).
:- use_module(utils).

game :- wide_cursor(1),
        drawBorders,
        drawPlatform.
