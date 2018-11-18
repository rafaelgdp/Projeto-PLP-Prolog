:- use_module(menu).

:- initialization(main).

main():- initializeMenu(),
         halt(0).
