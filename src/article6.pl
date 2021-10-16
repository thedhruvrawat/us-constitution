%all debts/engagagements entered into before adoption of constituion are valid.
isValidUnderConstitution(X):- enteredIntoBeforeAdoptionOfConstitution(X).

% Judges are bound to the constituion and the laws of any state
isBoundToConstitutionOrLawsOfTheState(X):-isJudge(X).

% predicate to check all those who are bound to support the constituion
isBoundUnderOathToSupportConstitution(X):-isSenator(X);isRepresentative(X);isMemberOfStateLegislature(X);isExecutiveOrJudicialOfficer(X).