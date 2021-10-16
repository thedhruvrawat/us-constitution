
power(congress,make(laws(toGiveFaithAndCredit(toLawsOfStateInOtherStates)))).

% A citizen of a state is entitled to priveledges and immunities in all states
isEntitledToPriveledgesInAllStates(X):-citizen(X,_).

% A wanted criminal in another state shall be returned on demand of the state
isAccusedOfCrimeInAnotherState:-returnUponDemandOfState(X).


power(congress,admit(newStates)).
power(congress,'Dispose of and make all needful rules and regulations respecting territory or other property belonging to the united states').

guaranteeRepublicanFormOfGovernement(X):- numOfRepresentatives(X,_).
protectAgainstInvasion(X):-numOfRepresentatives(X,_).
protectAgainstDomesticViolence(X):- onDemandOfLegislature(X),numOfRepresentatives(X,_).