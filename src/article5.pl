
power(congress,proposeAmmendments(X)).
power(congress,callConventionForAmmendments(X)).

proposeAmmendments(X):- twoThirdsOfBothHousesAgree(X).
callConventionForAmmendments(X):-onApplicationOfTwoThirdsOfAllStates(X).

ratifyAmmendment(X):-legislaturesOfThreeFourthsOfAllStatesApprove(X),equalSuffrageinSenateIsNotDeprivedWithoutConsent(X).