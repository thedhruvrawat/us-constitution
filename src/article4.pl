
power(congress,'By general laws prescribe the manner in which acts,records and judicial proceedings of every state shall be proved and the Effect Thereof').

% A citizen of a state is entitled to priveledges and immunities in all states
isEntitledToPriveledgesInAllStates(X):-isUScitizen(X).

% A wanted criminal in another state shall be returned on demand of the state
isAccusedOfCrimeInAnotherState:-returnUponDemandOfState(X).


power(congress,'Admit New states into the union').
power(congress,'Dispose of and make all needful rules and regulations respecting territory or other property belonging to the united states').

gauranteeRepublicanFormOfGovernement(X):-stateOfUS(X).
protectAgainstInvasion(X):-stateOfUS(X).
protectAgainstDomesticViolence(X):-OnDemandOfLegislature(X),stateOfUS(X).