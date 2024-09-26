madre(maria,jesus).
madre(isabel,maria).
madre(isabel,josefina).
madre(maria,paco).
padre(jose,jesus).
padre(jose,paco).
padre(paco,luis).
padre(jesus,sara).
padre(jesus,hermenejilda).

abuelo(X,Y):-
    padre(X,Z),padre(Z,Y);
    madre(X,Z),madre(Z,Y);
    padre(X,Z),madre(Z,Y);
    madre(X,Z),padre(Z,Y).

hermano(X,Y):-
    padre(Z,X),padre(Z,Y);
    madre(W,X),madre(W,Y).

tio(X,Y):-
    padre(W,Y),hermano(X,W);
    madre(W,Y),hermano(X,W).

primo(X,Y):-
    tio(Z,Y),padre(Z,X);%corregir orden de argumentos, creo que estan mal xD
    tio(Z,Y),madre(Z,X).

esposo(X,Y):-
    padre(X,W),madre(Y,W).
