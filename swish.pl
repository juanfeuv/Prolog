% hechos
hijo(sebas, estefa). hijo(sebas, mario).
hijo(juanita, estefa). hijo(juanita, mario).
hijo(estefa, carlos). hijo(estefa, claudia).
hijo(jaimito, juanita). hijo(jaimito, alberto).
hijo(daniel, estefa). hijo(daniel, mario).
hijo(camila, carlos). hijo(camila, claudia).
hombre(sebas). hombre(mario). hombre(carlos).
hombre(jaimito). hombre(daniel).
mujer(estefa). mujer(juanita). mujer(cata).
mujer(camila).

% reglas
padre(Y, X) :- hijo(X, Y), hombre(Y).
madre(Z, X) :- hijo(X, Z), mujer(Z).
sexo_opuesto(X, Y) :- hombre(X), mujer(Y).
sexo_opuesto(Y, X) :- hombre(X), mujer(Y).
abuelo(X, Z) :- padre(X, Y), hijo(Z, Y).
abuela(Y, Z) :- madre(Y, R), hijo(Z, R).
hermanos(X, Y) :- padre(Z, X), padre(Z, Y).
hermanos(X, Y) :- madre(Z, X), madre(Z, Y).
tio(X, Y) :- hermanos(X, Z), padre(Z, Y), not(padre(X, Y)).
tio(X, Y) :- hermanos(X, Z), madre(Z, Y), not(madre(X, Y)).
sobrino(Y, X) :- hermanos(X, Z), padre(Z, Y), not(padre(X, Y)).
sobrino(Y, X) :- hermanos(X, Z), madre(Z, Y), not(madre(X, Y)).
