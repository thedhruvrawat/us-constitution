% ARTICLE 2
% Section 1

% Paragraph 1
executivePower(president).
term(president,4).
term(vice_president,4).

% Paragraph 2
% numOfRepresentatives('New Hampshire', 3).
% numOfRepresentatives('Massachusetts', 8).
% numOfRepresentatives('Rhose Island and Providence Plantations', 1).
% numOfRepresentatives('Connecticut', 5).
% numOfRepresentatives('New York', 6).
% numOfRepresentatives('New Jersey', 4).
% numOfRepresentatives('Pennsylvania', 8).
% numOfRepresentatives('Delaware', 1).
% numOfRepresentatives('Maryland', 6).
% numOfRepresentatives('Virginia', 10).
% numOfRepresentatives('North Carolina', 5).
% numOfRepresentatives('South Carolina', 5).
% numOfRepresentatives('Georgia', 3).

% listOfReps(L1,ListOfReps):-
%     numOfRepresentatives(X,Y),
%     append(L1, [Y], L2),
%     listOfReps(L2,ListOfReps).
% makeListOfReps(ListOfReps):-
%     listOfReps([],ListOfReps).
% findSumOfReps([],0,0).
% findSumOfReps([H|T],X,Y):-
%     findSumOfReps(T,X1,Y1),
%     X is X1+1,
%     Y is Y1 + H.

sumOfReps(X):-
    X is 3+8+1+5+6+4+8+1+6+10+5+5+3.
numOfStates(Y):-
    Y is 13.
numOfElectors(Z):-
    % makeListOfReps(ListOfReps),
    % findSumOfReps(ListOfReps,NumOfStates,SumOfReps),
    sumOfReps(X),
    numOfStates(Y),
    Z is Y*2+X.

% Paragraph 3 superseded by the 12th Amendment

% Paragraph 4
power(congress,determine(time(chosing(electors)))).
power(congress,determine(day(voting(electors)))).


% Paragraph 5
qualified(X,president) :-
    age(X,Age),
    citizen(X,YearsAsCitizen),
    Age >= 35,
    YearsAsCitizen >= 14.

% Paragraph 6 superseded by the Section 3 of 20th Amendment

% Paragraph 7
compensation(president).

% Paragraph 8
oathBeforeOffice(president) :-
    write('I do solemnly swear (or affirm) that I will faithfully execute the Office of President of the United States, and will to the best of my Ability, preserve, protect and defend the Constitution of the United States.').

% Section 2
% Paragraph 1
commanderInChiefOfArmy(president).
opinionOfPrincipalOfficers(president).
power(president,grant(reprive(offenseAgainstUS))).
power(president,grant(pardon(offenseAgainstUS))).

% Paragraph 2
power(president,make(treaty)). % How to represent 2/3rd majority?
power(president,appoint(ambassador)).
power(president,appoint(minister)).
power(president,appoint(consul)).
power(president,appoint(judge(supremeCourt))).
power(president,appoint(ambassadors)).
power(president,appoint(officersOfUS(X))).
power(congress,change(modeOfAppointment(inferiorOfficer))).

% Paragraph 3
power(president,fill(vacancies(ressesOfSenate))).
power(president,grant(commisions(atEndOfTerm))).

% Section 3
informCongress(president,stateOfUnion).
recommendMeasuresToCongress(president).
power(president,conveneCongress(on(extraordinaryOccasions))).
power(president,conveneSenate(on(extraordinaryOccasions))).
power(president,conveneBothHouses(on(extraordinaryOccasions))).
power(president,adjourBothHouses(in(disagreement))).
receiveAmbassadors(president).
receiveMinisters(president).
ensureLawsExecuted(president).
power(president,commision(officers)).

% Section 4
canBeImpeached(X,crime(X,Y),convicted(X,Y)) :-
    Y = treason;
    Y = bribery;
    highCrime(Y).