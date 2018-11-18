:- module('credits', [showCredits/0]).

:- use_module(menu).
:- use_module(utils).

showCredits() :-
  clear(),
  writeln("============================================================="),
  writeln("======================== Créditos ==========================="),
  writeln("============================================================="),
  writeln("\n >> Jerônimo Jairo"),
  writeln(" >> Rafael Pontes"),
  writeln(" >> Matheus Santana"),
  writeln(" >> Junior Mendes"),
  writeln(" >> Henry Filho"),
  write("\n >> Pressione ENTER para retornar ao menu principal."),
  read_line_to_string(user_input, Something),
  initializeMenu().
