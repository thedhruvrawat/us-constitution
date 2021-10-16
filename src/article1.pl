%**************************************************************************
% ARTICLE 1
%**************************************************************************

% Section 1
%--------------------------------------------------------------------------

% Predicate to check is a body has legislative power vested with it.
legislativePower(X):-
    % write('Checking legislative powers through Article 1 Section 1......'),
    partOfCongress(X).

% Defines parts of US Congress
partOfCongress(senate).
partOfCongress(houseOfRepresentatives).

% Section 2
%--------------------------------------------------------------------------

% Predicate to check eligibility to the House of Representatives
qualified(X,houseOfRepresentatives) :-
    age(X,Age),
    citizen(X,YearsAsCitizen),
    Age >= 25,
    YearsAsCitizen >= 7.

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
    qualified(X, houseOfRepresentatives).


% Section 3
%--------------------------------------------------------------------------
% Number of senators from each state

% numOfSenators(X, Y) :- Y=2.

classesOfSenators :- 
    write('Senators shall be divided as equally as may be into three Classes\n'),
    write('The Seats of the Senators of the first Class shall be vacated at the Expiration of the second Year, of the second Class at the Expiration of the fourth Year, and of the third Class at the Expiration of the sixth Year, so that one third may be chosen every second Year.').

qualified(X,senate) :-
    age(X,Age),
    citizen(X,YearsAsCitizen),
    Age >= 30,
    YearsAsCitizen >= 9.

presidentOfSenate(X):-
    isVP(X);
    isProTemporePrez(X).

presidentOfSenate('Vice President').

impeachmentTrialPower(senate).

impeachPresidentPower(X):-
    chiefJustice(X).

impeachmentJudgement :-
    write('Judgment in Cases of Impeachment shall not extend further than to removal from Office, and disqualification to hold and enjoy any Office of honor, Trust or Profit under the United States: but the Party convicted shall nevertheless be liable and subject to Indictment, Trial, Judgment and Punishment, according to Law.').

% Section 4
%--------------------------------------------------------------------------
holdElectionEvents(X,legislature):-
    write('X represents the events of the election which are to be decided by the congress'),
    member(X,[times,places,manner]).

monday(D,M,Y):- day_of_the_week(date(D,M,Y),1).
congressMeetingDate(X,12,Y):-
    write('The Congress shall assemble at least once in every Year, and such Meeting shall be on the first Monday in December'),
    monday(D,M,Y).

% Section 5
%--------------------------------------------------------------------------
responsibilityOfHouse(X):-
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

% the limitations to the power of the senator has been described in the following lines . 
powersProscribed(senator , 'during the Time for which he was elected, be appointed to any civil Office under the Authority of the United States, which shall have been created').
powersProscribed(senator , 'during the Time for which he was elected, the Emoluments whereof shall have been encreased during such time').
powersProscribed(senator , 'not be a Member of either House during his Continuance in Office').





% Section 7
%--------------------------------------------------------------------------

isALaw(Bill) :-
    passedByHoR(Bill),
    passedBySenate(Bill),
    signedByPrez(Bill).

isALaw(Bill):-
    passedByHoRByTwoThirds(Bill),
    passedBySenateByTwoThirds(Bill).

isRevenueBill(Bill) :- 
    origin(Bill, 'House of Representatives').


% Section 8
%--------------------------------------------------------------------------

% Predicate to define the powers of the Congress
% power(congress, 'To lay and collect taxes, duties, imposts and excises').
power(congress, lay(taxes)).
power(congress, lay(duties)).
power(congress, lay(imposts)).
power(congress, lay(excises)).
power(congress, collect(taxes)).
power(congress, collect(duties)).
power(congress, collect(imposts)).
power(congress, collect(excises)).

% power(congress, 'To pay the debts').
power(congress, pay(debts)).

% power(congress, 'To provide for the common defence and general welfare of the United States').
power(congress, provide('common defence')).
power(congress, provide('general welfare')).

% power(congress, 'To borrow money on credit of the United States').
power(congress, borrow(money)).

% power(congress, 'To regulate Commerce with foreign Nations, and among the several States, and with the Indian Tribes').
power(congress, regulate(commerce(foreign-nations))).
power(congress, regulate(commerce(among-states))).
power(congress, regulate(commerce(indian-tribes))).


% power(congress, 'To establish an uniform Rule of Naturalization, and uniform Laws on the subject of Bankruptcies throughout the United States').
power(congress, establish(ruleOfNaturalization)).
power(congress, establish(lawOnBankruptcy)).

% power(congress, 'To coin Money, regulate the Value thereof, and of foreign Coin, and fix the Standard of Weights and Measures').
power(congress, coin(money)).
power(congress, regulate(money)).
power(congress, regulate(foreign-coin)).
power(congress, fix(standardOfWeightsAndMeasures)).

% power(congress, 'To provide for the Punishment of counterfeiting the Securities and current Coin of the United States').
power(congress, provide(punishment(counterfeiting(securities)))).
power(congress, provide(punishment(counterfeiting(currentCoin)))).

% power(congress, 'To establish Post Offices and post Roads').
power(congress, establish(postOffices)).
power(congress, establish(postRoads)).

% power(congress, 'To promote the Progress of Science and useful Arts, by securing for limited Times to Authors and Inventors the exclusive Right to their respective Writings and Discoveries').
power(congress, promote(science)).
power(congress, promote(usefulArts)).
power(congress, secure(exclusiveRight(writings(authors)))).
power(congress, secure(exclusiveRight(inventors(discoveries)))).

% power(congress, 'To constitute Tribunals inferior to the Supreme Court').
power(congress, constitute(tribunals)).

% power(congress, 'To define and punish Piracies and Felonies committed on the high Seas, and Offenses against the Law of Nations').
power(congress, define(piraciesInHighSeas)).
power(congress, define(feloniesInHighSeas)).
power(congress, define(offensesAgainstLawOfNations)).
power(congress, punish(piraciesInHighSeas)).
power(congress, punish(feloniesInHighSeas)).
power(congress, punish(offensesAgainstLawOfNations)).

% power(congress, 'To declare War, grant Letters of Marque and Reprisal, and make Rules concerning Captures on Land and Water').
power(congress, declare(war)).
power(congress, grant(letters(marque))).
power(congress, grant(letters(reprisal))).
power(congress, make(rules(captures))).

% power(congress, 'To raise and support Armies, but no Appropriation of Money to that Use shall be for a longer Term than two Years').
power(congress, raise(armies)).
power(congress, support(armies)).

% power(congress, 'To provide and maintain a Navy').
power(congress, provide(navy)).
power(congress, maintain(navy)).

% power(congress, 'To make Rules for the Government and Regulation of the land and naval Force').
power(congress, make(rules(for(government)))).
power(congress, make(rules(for(regulation(landForce))))).
power(congress, make(rules(for(regulation(navalForce))))).

% power(congress, 'To provide for calling forth the Militia to execute the Laws of the Union, suppress Insurrections and repel Invasions').
power(congress, provide(callingMilitia(to(execute(laws))))).
power(congress, provide(callingMilitia(to(suppress(insurrections))))).
power(congress, provide(callingMilitia(to(repel(invasions))))).

% power(congress, 'To provide for organizing, arming, and disciplining, the Militia, and for governing such Part of them as may be employed in the Service of the United States, reserving to the States respectively, the Appointment of the Officers, and the Authority of training the Militia according to the discipline prescribed by Congress').
power(congress, provide(for((organizing(militia))))).
power(congress, provide(for((arming(militia))))).
power(congress, provide(for((disciplining(militia))))).
power(congress, governing(militia(employedInServiceOfUS))).

% power(congress, 'To exercise exclusive Legislation in all Cases whatsoever, over such District (not exceeding ten Miles square) as may, by Cession of particular States, and the Acceptance of Congress, become the Seat of the Government of the United States, and to exercise like Authority over all Places purchased by the Consent of the Legislature of the State in which the Same shall be, for the Erection of Forts, Magazines, Arsenals, dock-Yards and other needful Building').
power(congress, exercise(exclusiveLegislation(erection(forts)))).
power(congress, exercise(exclusiveLegislation(erection(magazines)))).
power(congress, exercise(exclusiveLegislation(erection(arsenals)))).
power(congress, exercise(exclusiveLegislation(erection(dock-yards)))).

% power(congress, 'To make all Laws which shall be necessary and proper for carrying into Execution the foregoing Powers, and all other Powers vested by this Constitution in the Government of the United States, or in any Department or Officer thereof').
power(congress, make(laws(for(executionOfAllPowers(vestedByConstitution(in(governmentOfUS))))))).
power(congress, make(laws(for(executionOfAllPowers(vestedByConstitution(in(anyDepartmentOrOfficer))))))).


% Section 9
%--------------------------------------------------------------------------

% predicate defining the Migration of people .



% predicate defining the powers which are forbidden to the congress by the US Constitution .

powerForbidden(congress,'The Privilege of the Writ of Habeas Corpus shall not be suspended, unless when in Cases of Rebellion or Invasion the public Safety may require it').
powerForbidden(congress,'No Bill of Attainder or ex post facto Law shall be passed').
powerForbidden(congress,'No Tax or Duty shall be laid on Articles exported from any State').
powerForbidden(congress,'No Preference shall be given by any Regulation of Com- merce or Revenue to the Ports of one State over those of another: nor shall Vessels bound to, or from, one State, be obliged to enter, clear, or pay Duties in another').
powerForbidden(congress,'No Title of Nobility shall be granted by the United States').





% Section 10
%--------------------------------------------------------------------------
% predicate to define the boundness of the States

unauthorized(state, enter('Treaty')).
unauthorized(state, enter('Alliance')).
unauthorized(state, enter('Confedration')).
unauthorized(state, enter('Grant Letters Of Marque and Resprisal')).
unauthorized(state, enter('coin Money')).
unauthorized(state, enter('emit Bills of Credit')).
unauthorized(state, enter('make any Thing but gold and silver Coin a Tender in Payment of Debts')).
unauthorized(state, enter('pass any Bill of Attainder')).
unauthorized(state, enter('ex post facto Law')).
unauthorized(state, enter('Law impairing the Obligation of Contracts')).
unauthorized(state, enter('grant any Title of Nobility')).


% predicate to define what the state cannot do without the consent of the congress . 
%-------------------------------------------------------------------------------

unauthorized(state,withoutCongressConsent('lay any Imposts or Duties on Imports or Exports, except what may be absolutely necessary for executing it’s inspection Laws: and the net Produce of all Duties and Imposts, laid by any State on Imports or Exports, shall be for the Use of the Treasury of the United States; and all such Laws shall be subject to the Revision and Controul of the Congress')).
unauthorized(state,withoutCongressConsent('lay any Duty of Tonnage')).
unauthorized(state,withoutCongressConsent('keep Troops, or Ships of War in time of Peace')).
unauthorized(state,withoutCongressConsent('enter into any Agreement or Compact with another State')).
unauthorized(state,withoutCongressConsent('enter into any Agreement or Compact with a foreign Power')).
unauthorized(state,withoutCongressConsent('engage in War, unless actually invaded or  in such imminent Danger as will not admit of delay')).


age(rohan, 23).
citizen(rohan, 23).
age(meera, 30).
citizen(meera, 8).
age(david, 35).
citizen(david, 35).
age(leonard, 40).
citizen(leonard, 40).
age(amy, 38).
citizen(amy, 5).
