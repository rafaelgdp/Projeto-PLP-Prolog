:- use_module(menu).
:- use_module(utils).

:- initialization(main).

main():-
  initializeMenu(),
  halt(0).
