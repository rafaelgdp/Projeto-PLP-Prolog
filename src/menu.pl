:- module('menu', [initializeMenu/0]).

initializeMenu() :-
    clear(),
    writeln("============================================================="),
    writeln("======================== JumpMaster ========================="),
    writeln("============================================================="),
    writeln(""),
    writeln("  1) Iniciar"),
    writeln("  2) Recordes"),
    writeln("  3) Créditos"),
    writeln("  4) Sair"),
    writeln(""),
    write("  Digite a opção desejada para continuar: "),
    read_line_to_string(user_input, _).
