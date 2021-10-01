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

 
% Section 8
%--------------------------------------------------------------------------

% Predicate to define the powers of the Congress
power(congress, 'To lay and collect taxes, duties, imposts and excises').
power(congress, 'To pay the debts').
power(congress, 'To provide for the common defence and general welfare of the United States').
power(congress, 'To borrow money on credit of the United States').
power(congress, 'To regulate Commerce with foreign Nations, and among the several States, and with the Indian Tribes').
power(congress, 'To establish an uniform Rule of Naturalization, and uniform Laws on the subject of Bankruptcies throughout the United States').
power(congress, 'To coin Money, regulate the Value thereof, and of foreign Coin, and fix the Standard of Weights and Measures').
power(congress, 'To provide for the Punishment of counterfeiting the Securities and current Coin of the United States').
power(congress, 'To establish Post Offices and post Roads').
power(congress, 'To promote the Progress of Science and useful Arts, by securing for limited Times to Authors and Inventors the exclusive Right to their respective Writings and Discoveries').
power(congress, 'To constitute Tribunals inferior to the Supreme Court').
power(congress, 'To define and punish Piracies and Felonies committed on the high Seas, and Offenses against the Law of Nations').
power(congress, 'To declare War, grant Letters of Marque and Reprisal, and make Rules concerning Captures on Land and Water').
power(congress, 'To raise and support Armies, but no Appropriation of Money to that Use shall be for a longer Term than two Years').
power(congress, 'To provide and maintain a Navy').
power(congress, 'To make Rules for the Government and Regulation of the land and naval Force').
power(congress, 'To provide for calling forth the Militia to execute the Laws of the Union, suppress Insurrections and repel Invasions').
power(congress, 'To provide for organizing, arming, and disciplining, the Militia, and for governing such Part of them as may be employed in the Service of the United States, reserving to the States respectively, the Appointment of the Officers, and the Authority of training the Militia according to the discipline prescribed by Congress').
power(congress, 'To exercise exclusive Legislation in all Cases whatsoever, over such District (not exceeding ten Miles square) as may, by Cession of particular States, and the Acceptance of Congress, become the Seat of the Government of the United States, and to exercise like Authority over all Places purchased by the Consent of the Legislature of the State in which the Same shall be, for the Erection of Forts, Magazines, Arsenals, dock-Yards and other needful Building').
power(congress, 'To make all Laws which shall be necessary and proper for carrying into Execution the foregoing Powers, and all other Powers vested by this Constitution in the Government of the United States, or in any Department or Officer thereof').