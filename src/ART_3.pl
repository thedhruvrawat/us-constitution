%**************************************************************************
% ARTICLE 3
%**************************************************************************

% Section 1
%--------------------------------------------------------------------------
%Predicate to check whether the body has judiciary powers or not.

judicialPower(X):- supremeCourt(X);  %Judicial power to be vested in one SC,
                   inferiorCourt(X). %or could be one among the inferior courts.

inferiorCourt(X):- ordain(congress,X),    %inferior courts/lower federal courts needs to be
                   establish(congress,X). %established by congress.


supremeCourt('SCJUS'). %Supreme Court of Justice, United States.

ordain(congress,'FC1'). %Federal Court 1.
establish(congress,'FC1').


judgeOf(X,Y):- judge(X,Y),goodBehaviour(X),supremeCourt(Y);
               judge(X,Y),goodBehaviour(X),inferiorCourt(Y).

judge(ron,'FC1').
judge(harry,'FC1').
judge(hermione,'SCJUS').
goodBehaviour(ron).
goodBehaviour(hermione).


% Section 2
%--------------------------------------------------------------------------
% Predicate to check Cases whether they fall under the jurisdiction or
% not

extendPower(X):-case(X).

case('L&E').  %law and equality.
case('AP&C'). %Ambassadors,Public Ministers and Consuls.
case('A&MJ'). %Admiralty and Marital Jurisdiction.
case('D&C').  %Disputes, Conflicts and Controversies.


state('New Hampshire').
state('Massachusetts').
state('Rhose Island and Providence Plantations').
state('Connecticut').
state('New York').
state('New Jersey').
state('Pennsylvania').
state('Delaware').
state('Maryland').
state('Virginia').
state('North Carolina').
state('South Carolina').
state('Georgia').

scOriginalJur(X,P):- case(X),state(Y),member(Y,P). %P is the list of parties involved in the case.
scAppelateJur(X,P):- case(X),state(Y),not(member(Y,P)).


% Section 3
%--------------------------------------------------------------------------
%
tcase('WARuS'). %levying war against US
tcase('ENEuS'). %adhering to enemies of US

treason(X):- tcase(X).

treasonConvict(P,X):- witness(P,X)>= 2, treason(X); %witness >= 2 and crime should be treason
                    confess(P,X),treason(X).

% ------------------------------------------------------------------------
% Could have made a crime functor as in general for future use in other
% articles
