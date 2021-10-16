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


% supremeCourt('SCJUS'). %Supreme Court of Justice, United States.

% ordain(congress,'FC1'). %Federal Court 1.
% establish(congress,'FC1').

right(judge, compensation).

% judgeOf(X,Y):- judge(X,Y),goodBehaviour(X),supremeCourt(Y);
%                judge(X,Y),goodBehaviour(X),inferiorCourt(Y).

% judge(ron,'FC1').
% judge(harry,'FC1').
% judge(hermione,'SCJUS').
% goodBehaviour(ron).
% goodBehaviour(hermione).


% Section 2
%--------------------------------------------------------------------------
% Predicate to check Cases whether they fall under the jurisdiction or
% not

extendPower(X):-case(X).

case(lawAndEquality). %law and equality.The line in brackets was added by the 11th amendemnt
case(ambassadorsPublicMinistersAndConsuls). %Ambassadors,Public Ministers and Consuls.
case(admiraltyAndMaritalJurisdiction). %Admiralty and Marital Jurisdiction.
case(disputesConflictsAndControversies).  %Disputes, Conflicts and Controversies.


stateOfUS(newHampshire).
stateOfUS(massachusetts).
stateOfUS(rhodeIsland).
stateOfUS(connecticut).
stateOfUS(newYork).
stateOfUS(newJersey).
stateOfUS(pennsylvania).
stateOfUS(delaware).
stateOfUS(maryland).
stateOfUS(virginia).
stateOfUS(northCarolina).
stateOfUS(southCarolina).
stateOfUS(georgia).

supremeCourtOriginalJur(X,P):- case(X),stateOfUS(Y),member(Y,P). %P is the list of parties involved in the case.
supremeCourtAppelateJur(X,P):- case(X),stateOfUS(Y),not(member(Y,P)).


% Section 3
%--------------------------------------------------------------------------
%
treasonCase(warAgainstUS). %levying war against US
treasonCase(enemiesOfUS). %adhering to enemies of US

treason(X):- treasonCase(X).

treasonConvict(P,X):- witness(P,X)>= 2, treason(X); %witness >= 2 and crime should be treason
                    confess(P,X),treason(X).

% ------------------------------------------------------------------------
% Could have made a crime functor as in general for future use in other
% articles
