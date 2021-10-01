%**************************************************************************
% ARTICLE 1
%**************************************************************************

% Section 1
%--------------------------------------------------------------------------

% Predicate to check is a body has legislative power vested with it.
legislativePower(X):-
    write('Checking legislative powers through Article 1 Section 1......'),
    partOfCongress(X).

% Defines parts of US Congress
partOfCongress(senate).
partOfCongress('house of representatives').

% Section 2
%--------------------------------------------------------------------------

% Predicate to check eligibility to the House of Representatives
eligibleToHouse(X):-
    write('Checking eligibility through Article 1 Section 2......'),
    ageMoreThanTwentyFive(X),
    isUScitizen(X),
    livingMoreThanSeven(X).

% Predicate to check if a person lives in US
isUScitizen(X):-
    livesInUS(X).

livesInUS(ron).
livingMoreThanSeven(ron).
ageMoreThanTwentyFive(ron).

% Number of representatives initially detailed in the article
numOfRepresentatives('New Hampshire', 3).
numOfRepresentatives('Massachusetts', 8).
numOfRepresentatives('Rhose Island and Providence Plantations', 1).
numOfRepresentatives('Connecticut', 5).
numOfRepresentatives('New York', 6).
numOfRepresentatives('New Jersey', 4).
numOfRepresentatives('Pennsylvania', 8).
numOfRepresentatives('Delaware', 1).
numOfRepresentatives('Maryland', 6).
numOfRepresentatives('Virginia', 10).
numOfRepresentatives('North Carolina', 5).
numOfRepresentatives('South Carolina', 5).
numOfRepresentatives('Georgia', 3).

% Predicate to check if X has power to fill house vacancy    
powerToFillHouseVacancy(X) :-
    write('[Article 1, Section 2] Vacancy filled through Writs of Election by Executive Authority.'),
    isExecutive(X).

% Predicate to check if X has power to impeach 
powerOfImpeachment(X) :-
    speaker(X).

% Predicate to check if X is Speaker of the House
speaker(X) :-
    memberOfHouse(X).

% Predicate to check if X is member of the House
memberOfHouse(X) :-
    elected(X).

% Predicate to check if X has been elected to the House
elected(X) :-
    eligibleToHouse(X).

 
% Section 3
%--------------------------------------------------------------------------
