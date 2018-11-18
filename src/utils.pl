:- module('utils', [clear/0, 
                    cursor/2,
                    wide_cursor/1]).

clear() :-
  tty_clear.

cursor(X,Y) :- put(27), put(91), %%% ESC [
               write(Y),
               put(59),           %%%   ;
               write(X),
               put(72).           %%%   M

wide_cursor(Wide) :- ((Wide == 1, Result = "\e[?25l") ; % Invisivel
                      (Wide == 0, Result = "\e[0H\e[0J\e[?25h")) % Visivel
                      -> write(Result).