masculino(joao).
masculino(jose).
masculino(mario).
masculino(carlos).

feminino(maria).
feminino(helena).
feminino(ana).

filho(joao,jose).
filho(joao,maria).

filha(ana,jose).
filha(ana,maria).

filha(helena,ana).

filha(joana,ana).

filho(mario,joao).

filho(carlos,mario).
filho(carlos,helena).

pai(X,Y) :-
    masculino(X),
    (filho(Y,X);
    filha(Y,X)).

mae(X,Y) :-
    feminino(X),
    (filho(Y,X);
    filha(Y,X)).

avo(X,Y) :-
    (   pai(Z,Y),
    filho(Z,X));
	(   pai(Z,Y),
    filha(Z,X)).

irmao(X,Y) :-
    pai(Z,X),
    pai(Z,Y),
    masculino(Z).

irma(X,Y) :-
    pai(Z,X),
    pai(Z,Y),
    masculino(Z).

tio(X,Y) :-
    masculino(X),
    (pai(Z,Y),
    irmao(Z,X));(   
                mae(Z,Y),irmao(Z,Y)).
    
    


    