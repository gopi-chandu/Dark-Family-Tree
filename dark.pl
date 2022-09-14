/*Adam---------------------*/
parent(heinrich_tannhaus,gustav_tannhaus).
parent(gustav_tannhaus,leopold_tannhaus).
parent(leopold_tannhaus,hg_tannhaus).
parent(hg_tannhaus,elisabeth_doppler).

parent(elisabeth_doppler,charlotte_doppler).
parent(hanno_tauber,charlotte_doppler).


parent(charlotte_doppler,franziska_doppler).
parent(anatol_doppler,helge_doppler).
parent(greta_doppler,helge_doppler).

parent(helge_doppler,peter_doppler).
parent(ulla_schmidt,peter_doppler).

parent(peter_doppler,franziska_doppler).
parent(charlotte_doppler,franziska_doppler).

parent(peter_doppler,elisabeth_doppler).
parent(charlotte_doppler,elisabeth_doppler).

parent(silja,agnes_nielsen).
parent(bartosz_tiedemann,agnes_nielsen).

parent(helene_albers,katharina_nielsen).
parent(herman_albers,katharina_nielsen).


parent(tronte_nielsen,mads_nielsen).
parent(jana_nielsen,mads_nielsen).
parent(tronte_nielsen,ulrich_nielsen).
parent(jana_nielsen,ulrich_nielsen).

parent(ulrich_nielsen,magnus_nielsen).
parent(katharina_nielsen,magnus_nielsen).
parent(ulrich_nielsen,martha_nielsen).
parent(katharina_nielsen,martha_nielsen).
parent(ulrich_nielsen,mikkel_nielsen).
parent(katharina_nielsen,mikkel_nielsen).


parent(daniel_kahnwald,ines_kahnwald).
parent(ines_kahnwald,mikkel_nielsen).

parent(sebastian_kruger,hannah_kahnwald).

parent(hannah_kahnwald,jonas_kahnwald).
parent(mikkel_nielsen,jonas_kahnwald).

parent(hannah_kahnwald,silja).
parent(egon_tiedmann,silja).

parent(egon_tiedmann,claudia_tiedmann).
parent(doris_tiedmann,claudia_tiedmann).

parent(bernd_doppler,regina_tiedemann).
parent(claudia_tiedmann,regina_tiedemann).

parent(regina_tiedemann,bartosz_tiedemann).
parent(aleksander_tiedemann,bartosz_tiedemann).

parent(silja,agnes_nielsen).
parent(bartosz_tiedemann,agnes_nielsen).
parent(silja,hanno_tauber).
parent(bartosz_tiedemann,hanno_tauber).

parent(infinity,tronte_nielsen).

/*Eva---------------------*/

parent(ulrich_nielsen,martha_nielsen).
parent(katharina_nielsen,martha_nielsen).

parent(infinity,agnes_nielsen).
parent(infinity,tronte_nielsen).

parent(tronte_nielsen,mads_nielsen).
parent(jana_nielsen,mads_nielsen).
parent(tronte_nielsen,ulrich_nielsen).
parent(jana_nielsen,ulrich_nielsen).

parent(herman_albers,katharina_nielsen).
parent(helene_albers,katharina_nielsen).

parent(sebastian_kruger,hannah_kahnwald).

parent(hannah_kahnwald,silja).
parent(egon_tiedmann,silja).

parent(egon_tiedmann,claudia_tiedmann).
parent(doris_tiedmann,claudia_tiedmann).

parent(claudia_tiedmann,regina_tiedemann).
parent(bernd_doppler,regina_tiedemann).

parent(regina_tiedemann,bartosz_tiedemann).
parent(aleksander_tiedemann,bartosz_tiedemann).

parent(silja,agnes_nielsen).
parent(bartosz_tiedemann,agnes_nielsen).
parent(silja,hanno_tauber).
parent(bartosz_tiedemann,hanno_tauber).

parent(hanno_tauber,charlotte_doppler).
parent(elisabeth_doppler,charlotte_doppler).

parent(charlotte_doppler,franziska_doppler).
parent(peter_doppler,franziska_doppler).

parent(peter_doppler,elisabeth_doppler).
parent(charlotte_doppler,elisabeth_doppler).

parent(helge_doppler,peter_doppler).
parent(ulla_schmidt,peter_doppler).

parent(anatol_doppler,helge_doppler).
parent(greta_doppler,helge_doppler).

parent(hg_tannhaus,elisabeth_doppler).
parent(leopold_tannhaus,hg_tannhaus).
parent(gustav_tannhaus,leopold_tannhaus).
parent(heinrich_tannhaus,gustav_tannhaus).

/* Original world */
parent(heinrich_tannhaus,gustav_tannhaus).
parent(gustav_tannhaus,leopold_tannhaus).
parent(leopold_tannhaus,hg_tannhaus).
parent(hg_tannhaus,marek_tannhaus).

parent(marek_tannhaus,charlotte_tannhaus).
parent(sonja_tannhaus,charlotte_tannhaus).

parent(daniel_kahnwald,ines_kahnwald).

parent(herman_albers,katharina_nielsen).
parent(helene_albers,katharina_nielsen).

parent(egon_tiedmann,claudia_tiedmann).
parent(doris_tiedmann,claudia_tiedmann).

parent(claudia_tiedmann,regina_tiedemann).
parent(bernd_doppler,regina_tiedemann).

parent(anatol_doppler,helge_doppler).
parent(greta_doppler,helge_doppler).

parent(helge_doppler,peter_doppler).
parent(ulla_schmidt,peter_doppler).


parent(unknown,torben_woller).
parent(unknown,bernadette_woller).

parent(sebastian_kruger,hannah_woller).

parent(hannah_woller,jonasQ).
parent(torben_woller,jonasQ).


parent(infinity,jonas_kahnwald).
parent(infinity,martha_nielsen).


/* Add gender to database */
male(heinrich_tannhaus).
male(gustav_tannhaus).
male(leopold_tannhaus).
male(hg_tannhaus).
male(hanno_tauber).
male(agnes_nielsen).
male(peter_doppler).
male(helge_doppler).
male(anatol_doppler).
male(bernd_doppler).
male(herman_albers).
male(ulrich_nielsen).
male(tronte_nielsen).
male(mads_nielsen).
male(magnus_nielsen).
male(mikkel_nielsen).
male(daniel_kahnwald).
male(sebastian_kruger).
male(egon_tiedmann).
male(aleksander_tiedemann).
male(bartosz_tiedemann).
male(jonas_kahnwald).
male(aleksander_kohler).
male(torben_waller).
male(jonasQ).
male(torben_woller).

female(elisabeth_doppler).
female(charlotte_doppler).
female(franziska_doppler).
female(ulla_schmidt).
female(greta_doppler).
female(helene_albers).
female(katharina_nielsen).
female(jana_nielsen).
female(martha_nielsen).
female(ines_kahnwald).
female(hannah_kahnwald).
female(doris_tiedmann).
female(claudia_tiedmann).
female(regina_tiedemann).
female(silja).
female(jana).
female(bernadette_woller).
female(hannah_woller).

/* -------------------- */
/* define relationships */
/* -------------------- */


/* --------------------------------------*/
/* define children , child relationships */
/* --------------------------------------*/

/* X is a child of Y */
child(X,Y):-
    parent(Y,X).
/* X is a daughter of Y */
daughter(X,Y):-
    parent(Y,X),
    female(X).

son(X,Y):-
    parent(Y,X),
    male(X).

children(X,Children):-
    setof(Y,parent(X,Y),Children),!;
    Children=none.

/* --------------------------------------*/
/* define Father Mother relationships */
/* --------------------------------------*/

mother(X,Y):-
    parent(X,Y),
    female(X).

father(X,Y):-
    parent(X,Y),
    female(X).

parents(X, Parents) :-
	setof(Y, parent(Y, X), Parents),
	!.
parents(X, Parents) :-
	not(setof(Y, parent(Y, X), Parents)),
	Parents=none.


/* --------------------------------------*/
/* define Sibling relationship */
/* --------------------------------------*/

sibling(X,Y):-
   parent(Z,X),
   parent(Z,Y),
   X\==Y.

list_siblings(X,Siblings):-
    setof(Y,sibling(X,Y),Siblings);
    Siblings=none.

siblings(X, Y) :-
	list_siblings(X, Siblings),
	member(Y, Siblings).

sister(X,Y) :-
	siblings(X,Y),
	female(X).

brother(X,Y) :-
	siblings(X, Y),
	male(X).

/* --------------------------------------*/
/* define few more relationships */
/* --------------------------------------*/

aunt(X,Y) :-
	sister(X,Z),
	parent(Z,Y),
	dif(X, Z).

uncle(X,Y) :-
	brother(X,Z),
	parent(Z,Y),
	dif(X,Z).

neice(X,Y) :-
	daughter(X,Z),
	siblings(Z,Y),
	dif(Y,Z).	

nephew(X,Y) :-
	son(X,Z),
	siblings(Z,Y),
	dif(Y,Z).

/* --------------------------------------*/
/* To find relationship between any two */
/* --------------------------------------*/

relationship(X,Y):-
    mother(X,Y),
    format("~w is the mother of ~w", [X, Y]), nl.

relationship(X,Y) :-
	father(X,Y),
	format("~w is the father of ~w", [X, Y]), nl.

relationship(X,Y) :-
	daughter(X,Y),
	format("~w is the daughter of ~w", [X,Y]), nl.

relationship(X,Y) :-
	son(X,Y),
	format("~w is the son of ~w", [X,Y]), nl.

relationship(X,Y) :-
	sister(X,Y),
	format("~w is the sister of ~w", [X,Y]), nl.

relationship(X,Y) :-
	brother(X,Y),
	format("~w is the brother of ~w", [X,Y]), nl.

relationship(X,Y) :-
	aunt(X, Y),
	format("~w is the aunt of ~w", [X,Y]), nl.

relationship(X,Y) :-
	uncle(X, Y),
	format("~w is the uncle of ~w", [X,Y]), nl.

relationship(X,Y) :-
	neice(X,Y),
	format("~w is the neice of ~w", [X,Y]), nl.

relationship(X,Y) :-
	nephew(X, Y),
	format("~w is the nephew of ~w", [X,Y]), nl.

/* --------------------------------------*/
/* Tell about someone */
/* --------------------------------------*/

about(X) :-
	parents(X, Parents),
	format("Parents: ~w", [Parents]), nl, 
    children(X, Children),
	format("Children: ~w", [Children]), nl,
	list_siblings(X, Siblings),
	format("Siblings: ~w", [Siblings]), nl,
	!.