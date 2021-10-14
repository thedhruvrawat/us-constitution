
power(congress,"Propose ammendments to the constituion when two thirds of both houses approve").
power(congress,"Call convention for proposing ammendments on appliccation of two thirds of all states ").

proposeAmmendments(X):- TwoThirdsOfBothHousesAgree(X).
callConventionForAmmendments(X):-OnApplicationOfTwoThirdsOfAllStates(X).

ratifyAmmendment(X):-LegislaturesOfThreeFourthsOfAllStatesApprove(X),equalSuffrageinSenateIsNotDeprivedWithoutConsent(X).