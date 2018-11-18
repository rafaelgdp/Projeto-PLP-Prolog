:- module('records', [showRecords/0]).

:- use_module(menu).
:- use_module(utils).

showRecords() :-
  clear(),
  writeln("============================================================="),
  writeln("======================== Recordes ==========================="),
  writeln("============================================================="),
  writeln(""),
  write("\n >> Pressione ENTER para retornar ao menu principal."),
  read_line_to_string(user_input, Something),
  initializeMenu().
