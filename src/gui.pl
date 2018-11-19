:- module('gui', [drawBorders/0]).

:- use_module(utils).

width(60).
heigth(35).

drawBorders :-
		 clear,
                 drawVertical,
                 drawHorizontal,
                 drawPlayer,
		 drawPlatform(0, 35).

drawVertical() :- width(Width),
                  drawVertical(0, 0),
                  W is Width - 1,
                  drawVertical(W, 0).

drawVertical(_, Heigth) :- heigth(Heigth).
drawVertical(X, R) :- cursor(X, R),
                      write("X"),
                      R1 is R + 1,
                      drawVertical(X, R1).

drawHorizontal() :- heigth(Heigth),
                    drawHorizontal(0, 0),
                    drawHorizontal(Heigth, 0).

drawHorizontal(_, Width) :- width(Width).
drawHorizontal(Y, R) :- cursor(R, Y),
                        write("X"),
                        R1 is R + 1,
                        drawHorizontal(Y, R1).

drawPlayer :- width(Width), heigth(Heigth),
              H is Heigth - 1, W is (Width / 2) - 3,
              cursor(W, H), write(" / \\"),
              H2 is H - 1, cursor(W, H2), write("/|_|\\"),
              H3 is H2 - 1, cursor(W, H3), write("(^~^)").

drawPlatform(X, Y) :- Z is X + 2, T is Y - 1,
        	cursor(Z, T), write(" ========"),
                flush_output, sleep(0.3), M is X + 1, drawPlatform(M, Y).
            
