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

% 
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


% Section 4
%--------------------------------------------------------------------------
holdElectionEvents(X,legislature):-
    write('X represents the events of the election which are to be decided by the congress'),
    member(X,[times,places,manner]).
monday(7,1,2019). %from the test cases 
monday(2,12,2019).%from the test cases 
congressMeetingDate(X,12,Y):-
    write('The Congress shall assemble at least once in every Year, and such Meeting shall be on the first Monday in December'),
    monday(X,12,Y).

% Section 5
%--------------------------------------------------------------------------
houseShall(X):-
    member(X,['be the Judge of the Elections',
    'Returns and Qualifications of its own Members, and a Majority of each shall constitute a Quorum to do Business; but a smaller Number may adjourn from day to day, and may be authorized to compel the Attendance of absent Members, in such Manner, and under such Penalties as each House may provide','determine the Rules of its Proceedings, punish its Members for disorderly Behaviour, and, with the Concurrence of two thirds, expel a Member',
    'keep a Journal of its Proceedings, and from time to time publish the same, excepting such Parts as may in their Judgment require Secrecy']).

% Section 6 
%--------------------------------------------------------------------------
isExempted(X) :-
    write('they shall be privileged from Arrest during their Attendance at the Session of their respective Houses, and in going to and return- ing from the same; and for any Speech or Debate in either House, they shall not be questioned in any other Place') ,
    isSenator(X),
    isRepresentative(X),
    noTreason(X),
    noFeloncyAndBreachOfPeace(X) .

isSenator(ron).
isRepresentative(ron).
noTreason(ron).
noFeloncyAndBreachOfPeace(ron).


noSenatorOrRepresentative(shall , 'during the Time for which he was elected, be appointed to any civil Office under the Authority of the United States, which shall have been created').
noSenatorOrRepresentative(shall , 'during the Time for which he was elected, the Emoluments whereof shall have been encreased during such time').
noSenatorOrRepresentative(shall,'not be a Member of either House during his Continuance in Office').
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


% Section 9
%--------------------------------------------------------------------------




powerForbidden(congress,'The Privilege of the Writ of Habeas Corpus shall not be suspended, unless when in Cases of Rebellion or Invasion the public Safety may require it').
powerForbidden(congress,'No Bill of Attainder or ex post facto Law shall be passed').
powerForbidden(congress,'No Tax or Duty shall be laid on Articles exported from any State').
powerForbidden(congress,'No Preference shall be given by any Regulation of Com- merce or Revenue to the Ports of one State over those of another: nor shall Vessels bound to, or from, one State, be obliged to enter, clear, or pay Duties in another').
powerForbidden(congress,'No Title of Nobility shall be granted by the United States').





% Section 10
%--------------------------------------------------------------------------
% predicate to define the boundness of the States

noStateShall(enter,'Treaty').
noStateShall(enter,'Alliance').
noStateShall(enter,'Confedration').
noStateShall(enter,'Grant Letters Of Marque and Resprisal').
noStateShall(enter,'coin Money').
noStateShall(enter,'emit Bills of Credit').
noStateShall(enter,'make any Thing but gold and silver Coin a Tender in Payment of Debts').
noStateShall(enter,'pass any Bill of Attainder').
noStateShall(enter,'ex post facto Law').
noStateShall(enter,'Law impairing the Obligation of Contracts').
noStateShall(enter,'grant any Title of Nobility').


noStateShall(withoutConsentOfCongress,'lay any Imposts or Duties on Imports or Exports, except what may be absolutely necessary for executing it’s inspection Laws: and the net Produce of all Duties and Imposts, laid by any State on Imports or Exports, shall be for the Use of the Treasury of the United States; and all such Laws shall be subject to the Revision and Controul of the Congress').
noStateShall(withoutConsentOfCongress,'lay any Duty of Tonnage').
noStateShall(withoutConsentOfCongress,'keep Troops, or Ships of War in time of Peace').
noStateShall(withoutConsentOfCongress,'enter into any Agreement or Compact with another State').
noStateShall(withoutConsentOfCongress,'enter into any Agreement or Compact with a foreign Power').
noStateShall(withoutConsentOfCongress,'engage in War, unless actually invaded or  in such imminent Danger as will not admit of delay').

