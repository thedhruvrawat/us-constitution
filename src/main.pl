%----------- Facts copied for implementation of test cases-----------------
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
stateOfUS(newHampshire).
stateOfUS(massachusetts).
stateOfUS(connecticut).
stateOfUS(newYork).
stateOfUS(newJersey).
stateOfUS(pennsylvania).
stateOfUS(delaware).
stateOfUS(maryland).
stateOfUS(virginia).
stateOfUS(northCarolina).
stateOfUS(southCarolina).
stateOfUS(georgia).
monday(7, 1, 2019).
monday(2, 12, 2019).
%--------------------------------------------------------------------------

%**************************************************************************
% ARTICLE 1
%**************************************************************************

% Section 1
%--------------------------------------------------------------------------
% Predicate to check is a body has legislative power vested with it.
legislativePower(X):-
    partOfCongress(X).

% Defines parts of US Congress
partOfCongress(senate).
partOfCongress(houseOfRepresentatives).

% Section 2
%--------------------------------------------------------------------------

% Predicate to check eligibility to the House of Representatives
qualified(X, houseOfRepresentatives) :-
    age(X,Age),
    citizen(X,YearsAsCitizen),
    Age >= 25,
    YearsAsCitizen >= 7.

% Number of representatives initially detailed in the article
numOfRepresentatives(newHampshire, 3).
numOfRepresentatives(massachusetts, 8).
numOfRepresentatives(rhodeIsland, 1).
numOfRepresentatives(connecticut, 5).
numOfRepresentatives(newYork, 6).
numOfRepresentatives(newJersey, 4).
numOfRepresentatives(pennsylvania, 8).
numOfRepresentatives(delaware, 1).
numOfRepresentatives(maryland, 6).
numOfRepresentatives(virginia, 10).
numOfRepresentatives(northCarolina, 5).
numOfRepresentatives(southCarolina, 5).
numOfRepresentatives(georgia, 3).
stateOfUS(X):- numOfRepresentatives(X,_).

% Predicate to check if X has power to fill house vacancy    
power(executiveAuthority,fill(houseVacancies)).

% Predicate to check if X has power to impeach 
power(houseOfRepresentatives,choose(speaker)).
power(houseOfRepresentatives,choose(officers)).
power(houseOfRepresentatives,impeachment).

% Predicate to check if X is Speaker of the House
speaker(X) :-
    isRepresentative(X).

% Predicate to check if X is member of the House
isRepresentative(X) :-
    electedHouse(X).

% Predicate to check if X has been elected to the House
electedHouse(X) :-
    qualified(X, houseOfRepresentatives).


% Section 3
%--------------------------------------------------------------------------

numOfSenators(X, Y) :- numOfRepresentatives(X,_),Y=2.

classesOfSenators :- 
    write('Senators shall be divided as equally as may be into three Classes\n'),
    write('The Seats of the Senators of the first Class shall be vacated at the Expiration of the second Year, 
           of the second Class at the Expiration of the fourth Year, and of the third Class at the Expiration of 
           the sixth Year, so that one third may be chosen every second Year.').

qualified(X,senate) :-
    age(X,Age),
    citizen(X,YearsAsCitizen),
    Age >= 30,
    YearsAsCitizen >= 9,
    inhabitant(X,Y).

isSenator(X) :-
    electedSenate(X).

electedSenate(X) :-
    qualified(X, senate).

presidentOfSenate(vicePresident).

power(senate,try(for(impeachment))).

presideOverImpeachementTrial(chiefJustice).

impeachmentJudgement :-
    write('Judgment in Cases of Impeachment shall not extend further than to removal from Office, and 
           disqualification to hold and enjoy any Office of honor, Trust or Profit under the United States: 
           but the Party convicted shall nevertheless be liable and subject to Indictment, Trial, Judgment 
           and Punishment, according to Law.').

% Section 4
%--------------------------------------------------------------------------

holdElectionEvents(X,legislature):-
    write('X represents the events of the election which are to be decided by the congress'),
    member(X,[times,places,manner]).

monday(D,M,Y):- day_of_the_week(date(Y,M,D),1).
% Section 4 was changed by section 2 of the 20th amendment
% meetingOfCongress(D,M,Y):-
%     write('The Congress shall assemble at least once in every Year, and such Meeting shall be on the first Monday in December'),
%     M=12,
%     D <= 7,
%     monday(D,12,Y).

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


% The limitations to the power of the senator has been described in the following lines . 
powersProscribed(senator, 'during the Time for which he was elected, be appointed to any civil Office under the Authority of the United States, which shall have been created').
powersProscribed(senator, 'during the Time for which he was elected, the Emoluments whereof shall have been encreased during such time').
powersProscribed(senator, 'not be a Member of either House during his Continuance in Office').

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
power(congress, lay(tax)).
power(congress, lay(duties)).
power(congress, lay(imposts)).
power(congress, lay(excises)).
power(congress, collect(tax)).
power(congress, collect(duties)).
power(congress, collect(imposts)).
power(congress, collect(excises)).

power(congress, pay(debts)).

power(congress, provide('common defence')).
power(congress, provide('general welfare')).

power(congress, borrow(money)).

power(congress, regulate(commerce(foreign-nations))).
power(congress, regulate(commerce(among-states))).
power(congress, regulate(commerce(indian-tribes))).

power(congress, establish(ruleOfNaturalization)).
power(congress, establish(lawOnBankruptcy)).

power(congress, coin(money)).
power(congress, regulate(money)).
power(congress, regulate(foreign-coin)).
power(congress, fix(standardOfWeightsAndMeasures)).

power(congress, provide(punishment(counterfeiting(securities)))).
power(congress, provide(punishment(counterfeiting(currentCoin)))).

power(congress, establish(postOffices)).
power(congress, establish(postRoads)).

power(congress, promote(science)).
power(congress, promote(usefulArts)).
power(congress, secure(exclusiveRight(writings(authors)))).
power(congress, secure(exclusiveRight(inventors(discoveries)))).

power(congress, constitute(tribunals)).

power(congress, define(piraciesInHighSeas)).
power(congress, define(feloniesInHighSeas)).
power(congress, define(offensesAgainstLawOfNations)).
power(congress, punish(piraciesInHighSeas)).
power(congress, punish(feloniesInHighSeas)).
power(congress, punish(offensesAgainstLawOfNations)).

power(congress, declare(war)).
power(congress, grant(letters(marque))).
power(congress, grant(letters(reprisal))).
power(congress, make(rules(captures))).

power(congress, raise(armies)).
power(congress, support(armies)).

power(congress, provide(navy)).
power(congress, maintain(navy)).

power(congress, make(rules(for(government)))).
power(congress, make(rules(for(regulation(landForce))))).
power(congress, make(rules(for(regulation(navalForce))))).

power(congress, provide(callingMilitia(to(execute(laws))))).
power(congress, provide(callingMilitia(to(suppress(insurrections))))).
power(congress, provide(callingMilitia(to(repel(invasions))))).

power(congress, provide(for((organizing(militia))))).
power(congress, provide(for((arming(militia))))).
power(congress, provide(for((disciplining(militia))))).
power(congress, governing(militia(employedInServiceOfUS))).

power(congress, exercise(exclusiveLegislation(erection(forts)))).
power(congress, exercise(exclusiveLegislation(erection(magazines)))).
power(congress, exercise(exclusiveLegislation(erection(arsenals)))).
power(congress, exercise(exclusiveLegislation(erection(dock-yards)))).

power(congress, make(laws(for(executionOfAllPowers(vestedByConstitution(in(governmentOfUS))))))).
power(congress, make(laws(for(executionOfAllPowers(vestedByConstitution(in(anyDepartmentOrOfficer))))))).


% Section 9
%--------------------------------------------------------------------------

% Predicate defining the Migration of people .


% Predicate defining the powers which are forbidden to the congress by the US Constitution .

powerForbidden(congress,'The Privilege of the Writ of Habeas Corpus shall not be suspended, unless when in Cases of Rebellion or Invasion the public Safety may require it').
powerForbidden(congress,'No Bill of Attainder or ex post facto Law shall be passed').
powerForbidden(congress,'No Tax or Duty shall be laid on Articles exported from any State').
powerForbidden(congress,'No Preference shall be given by any Regulation of Commerce or Revenue to the Ports of one State over those of another: nor shall Vessels bound to, or from, one State, be obliged to enter, clear, or pay Duties in another').
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

%**************************************************************************
% ARTICLE 2
%**************************************************************************

% Section 1
%--------------------------------------------------------------------------

executivePower(president).
term(president,4).
term(vicePresident,4).

electors(X, Y) :-
    numOfRepresentatives(X, K),
    Y is K+2.

% Paragraph 3 superseded by the 12th Amendment

power(congress, determine(time(choosing(electors)))).
power(congress, determine(day(voting(electors)))).

qualified(X,president) :-
    age(X,Age),
    citizen(X,YearsAsCitizen),
    Age >= 35,
    YearsAsCitizen >= 14.

% Paragraph 6 superseded by the Section 3 of 20th Amendment

right(president, compensation).

oathBeforeOffice(president) :-
    write('I do solemnly swear (or affirm) that I will faithfully execute the Office of President of the United States, and will to the best of my Ability, preserve, protect and defend the Constitution of the United States.').

% Section 2
%--------------------------------------------------------------------------

commanderInChiefOfArmy(president).
opinionOfPrincipalOfficers(president).
power(president,grant(reprive(offenseAgainstUS))).
power(president,grant(pardon(offenseAgainstUS))).

power(president,make(treaty)).
power(president,appoint(ambassador)).
power(president,appoint(minister)).
power(president,appoint(consul)).
power(president,appoint(judge(supremeCourt))).
power(president,appoint(ambassadors)).
power(president,appoint(officersOfUS(X))).
power(congress,change(modeOfAppointment(inferiorOfficer))).

power(president,fill(vacancies(ressesOfSenate))).
power(president,grant(commisions(atEndOfTerm))).

% Section 3
%--------------------------------------------------------------------------

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
%--------------------------------------------------------------------------

canBeImpeached(X,crime(X,Y),convicted(X,Y)) :-
    Y = treason;
    Y = bribery;
    highCrime(Y).

%**************************************************************************
% ARTICLE 3
%**************************************************************************

% Section 1
%--------------------------------------------------------------------------

% Predicate to check whether the body has judiciary powers or not.

judicialPower(X):- supremeCourt(X);  %Judicial power to be vested in one SC,
                   inferiorCourt(X). %or could be one among the inferior courts.

inferiorCourt(X):- ordain(congress,X),    %inferior courts/lower federal courts needs to be
                   establish(congress,X). %established by congress.

right(judge, compensation).

% Section 2
%--------------------------------------------------------------------------

% Predicate to check Cases whether they fall under the jurisdiction or not

extendPower(X) :- case(X).

case(lawAndEquality). % law and equality.The line in brackets was added by the 11th amendemnt
case(ambassadorsPublicMinistersAndConsuls). % Ambassadors,Public Ministers and Consuls.
case(admiraltyAndMaritalJurisdiction). % Admiralty and Marital Jurisdiction.
case(disputesConflictsAndControversies).  % Disputes, Conflicts and Controversies.

stateOfUS(rhodeIsland).

supremeCourtOriginalJur(X,P):- case(X),stateOfUS(Y),member(Y,P). % P is the list of parties involved in the case.
supremeCourtAppelateJur(X,P):- case(X),stateOfUS(Y),not(member(Y,P)).


% Section 3
%--------------------------------------------------------------------------

treasonCase(warAgainstUS). % levying war against US
treasonCase(enemiesOfUS). % adhering to enemies of US

treason(X):- treasonCase(X).

treasonConvict(P,X):- witness(P,X)>= 2, treason(X); % witness >= 2 and crime should be treason
                    confess(P,X),treason(X).

%**************************************************************************
% ARTICLE 4
%**************************************************************************

power(congress,make(laws(toGiveFaithAndCredit(toLawsOfStateInOtherStates)))).

% A citizen of a state is entitled to priveledges and immunities in all states
isEntitledToPriveledgesInAllStates(X):-citizen(X,_).

% A wanted criminal in another state shall be returned on demand of the state
isAccusedOfCrimeInAnotherState:-returnUponDemandOfState(X).


power(congress, admit(newStates)).
power(congress, dispose(rules(respectingTerritoryOfUS))).
power(congress, make(rules(respectingTerritoryOfUS))).
power(congress, dispose(rules(respectingPropertyOfUS))).
power(congress, make(rules(respectingPropertyOfUS))).

guaranteeRepublicanFormOfGovernement(X):- numOfRepresentatives(X,_).
protectionAgainstInvasion(X):-numOfRepresentatives(X,_).
protectionAgainstDomesticViolence(X):- onDemandOfLegislature(X),numOfRepresentatives(X,_).

%**************************************************************************
% ARTICLE 5
%**************************************************************************

power(congress, proposeAmmendments(X)).
power(congress, callConventionForAmmendments(X)).

proposeAmmendments(X) :- twoThirdsOfBothHousesAgree(X).
callConventionForAmmendments(X) :-onApplicationOfTwoThirdsOfAllStates(X).

ratifyAmendment(X) :- legislaturesOfThreeFourthsOfAllStatesApprove(X), 
                      equalSuffrageinSenateIsNotDeprivedWithoutConsent(X).

%**************************************************************************
% ARTICLE 6
%**************************************************************************

% All debts/engagagements entered into before adoption of constituion are valid.
isValidUnderConstitution(X):- enteredIntoBeforeAdoptionOfConstitution(X).

% Judges are bound to the constituion and the laws of any state
isBoundToConstitutionOrLawsOfTheState(X):- isJudge(X).

% Check all those who are bound to support the constituion
isBoundUnderOathToSupportConstitution(X):- isSenator(X);
                                           isRepresentative(X);
                                           isMemberOfStateLegislature(X);
                                           isExecutiveOrJudicialOfficer(X).

%**************************************************************************
% ARTICLE 7
%**************************************************************************

signatories(newHampshire, 'John Langdon , Nicholas Gilman').
signatories(massachusetts, 'Nathaniel Gorham , Rufus King').
signatories(connecticut, 'Wm. Saml. Johnson,Roger Sherman ').
signatories(newYork, 'Alexander Hamilton').
signatories(newJersey, 'Wil: Livingston,David Brearley,Wm. Paterson,Jona: Dayton').
signatories(pennsylvania, 'B Franklin,Thomas Mifflin,Robt Morris,Geo. Clymer,Thos. FitzSimons,Jared Ingersoll,James Wilson,Gouv Morris ').
signatories(delaware, 'Geo: Read,Gunning Bedford jun,John Dickinson,Richard Bassett,Jaco: Broom').
signatories(maryland, 'James McHenry,Dan of St. Thos. Jenifer,Danl Carroll').
signatories(virginia, 'John Blair,James Madison Jr. ').
signatories(northCarolina, 'Wm. Blount,Richd. Dobbs Spaight,Hu Williamson ').
signatories(southCarolina, 'J. Rutledge,Charles Cotesworth Pinckney,Charles Pinckney,Pierce Butler ').
signatories(georgia, 'William Few,Abr Baldwin ').

letterOfRatification :- write('In Convention Monday 
    September 17th, 1787.
    Present
    The States of
    New Hampshire, Massachusetts, Connecticut, Mr. Hamilton from New York, 
    New Jersey, Pennsylvania, Delaware, Maryland, Virginia, North Carolina, 
    South Carolina and Georgia.
    Resolved,
    That the preceeding Constitution be laid before the United
    States in Congress assembled, and that it is the Opinion
    of this Convention, that it should afterwards be submitted
    to a Convention of Delegates, chosen in each State by the
    People thereof, under the Recommendation of its Legislature, 
    for their Assent and Ratifi cation; and that each Convention 
    assenting to, and ratifying the Same, should give
    Notice thereof to the United States in Congress assembled.
    Resolved, That it is the Opinion of this Convention, that
    as soon as the Conventions of nine States shall have ratified
    this Constitution, the United States in Congress assembled
    should fix a Day on which Electors should be appointed by
    the States which shall have ratifi ed the same, and a 
    Day on which the Electors should assemble to vote for the 
    President, and the Time and Place for commencing Proceedings
    under this Constitution.
    That after such Publication the Electors should be appointed, 
    and the Senators and Representatives elected: That the 
    Electors should meet on the Day fi xed for the Election
    of the President, and should transmit their Votes certifi ed,
    signed, sealed and directed, as the Constitution requires, to
    the Secretary of the United States in Congress assembled,
    that the Senators and Representatives should convene at the
    Time and Place assigned; that the Senators should appoint
    a President of the Senate, for the sole Purpose of receiving,
    opening and counting the Votes for President; and, that
    after he shall be chosen, the Congress, together with the
    President, should, without Delay, proceed to execute this
    Constitution.
    By the unanimous Order of the Convention
    Go. Washington-Presidt:
    W. JACKSON Secretary.').

%**************************************************************************
% AMENDMENTS
%**************************************************************************

% Preamble to the Bill of Rights

% right(X) :- citizen(X, Y).

preambleToBillOfRights :-
write('CONGRESS OF THE UNITED STATES BEGUN AND HELD AT THE CITY OF NEW-YORK, ON WEDNESDAY THE FOURTH OF MARCH, ONE THOUSAND SEVEN HUNDRED AND EIGHTY NINE\n\n'),
write('THE Conventions of a number of the States, having at the time of their adopting the Constitution, expressed a desire, in order to prevent misconstruction or abuse of its powers, that further declaratory and restrictive clauses should be added: And as extending the ground of public confidence in the Government, will best ensure the beneficent ends of its institution\n\n'),
write('RESOLVED by the Senate and House of Representatives of the United States of America, in Congress assembled, two thirds of both Houses concurring, that the following Articles be proposed to the  legislatures of the several States, as amendments to the Constitution of the United States, all, or any of which Articles, when ratifi ed by three fourths of the said Legislatures, to be valid to all intents and purposes, as part of the said Constitution; viz.\n\n'),
write('ARTICLES in addition to, and Amendment of the Constitution of the United States of America, proposed by Congress, and ratifi ed by the Legislatures of the several States, pursuant to the fifth  Article of the original Constitution.').


% Amendment 1
%--------------------------------------------------------------------------

printAmendment1 :-
write('Congress shall make no law respecting an establishment of religion, or prohibiting the free exercise thereof; or abridging the freedom of speech, or of the press, or the right of the people peaceably to assemble, and to petition the Government for a redress of grievances.').
right(X, peacefulAssembly).
right(X, freeExercise(religion)).
right(X, freedom(speech)).
right(X, freedom(press)).
right(X, petition(government(grievanceRedressal))).


% Amendment 2
%--------------------------------------------------------------------------

printAmendment2 :-
write('A well regulated Militia, being necessary to the security of a free State, the right of the people to keep and bear Arms, shall not be infringed.').
right(X, keep(arms)).
right(X, bear(arms)).

% Amendment 3
%--------------------------------------------------------------------------

printAmendment3 :-
write('No Soldier shall, in time of peace be quartered in any house, without the consent of the Owner, nor in time of war, but in a manner to be prescribed by law.').

% Amendment 4
%--------------------------------------------------------------------------

printAmendment4 :-
write('The right of the people to be secure in their persons, houses, papers, and effects, against unreasonable searches and seizures, shall not be violated, and no Warrants shall issue, but upon probable cause, supported by Oath or affirmation, and particularly describing the place to be searched, and the persons or things to be seized.').
right(X, toBeSecure(in(person))).
right(X, toBeSecure(in(houses))).
right(X, toBeSecure(in(papersAndEffects))).
right(X, toBeSecure(against(unreasonableSearches))).
right(X, toBeSecure(against(warrants(withoutProbableCause)))).

% Amendment 5
%--------------------------------------------------------------------------

printAmendment5 :-
write('No person shall be held to answer for a capital, or otherwise infamous crime, unless on a presentment or indictment of a Grand Jury, except in cases arising in the land or naval forces, or in the Militia, when in actual service in time of War or public danger; nor shall any person be subject for the same offence to be twice put in jeopardy of life or limb; nor shall be compelled in any criminal case to be a witness against himself, nor be deprived of life, liberty, or property, without due process of law; nor shall private property be taken for public use, without just compensation.').
right(X, not(held(withoutIndictment))).
right(X, not(putInJeopardy(life))).
right(X, not(putInJeopardy(limb))).
right(X, not(compelledAsWitness(againstHimself))).
right(X, not(deprived(life))).
right(X, not(deprived(limb))).
right(X, not(deprived(property))).
right(X, privateProperty).

% Amendment 6
%--------------------------------------------------------------------------

printAmendment6 :-
write('In all criminal prosecutions, the accused shall enjoy the right to a speedy and public trial, by an impartial jury of the State and district wherein the crime shall have been committed, which district shall have been previously ascertained by law, and to be informed of the nature and cause of the accusation; to be confronted with the witnesses against him; to have compulsory process for obtaining witnesses in his favor, and to have the Assistance of Counsel for his defence.').
right(X, speedyTrial(impartialJury(districtOfCrime))).
right(X, publicTrial(impartialJury(districtOfCrime))).
right(X, obtainWitnessesInFavor).
right(X, assistanceOfCounsel(forDefence)).

% Amendment 7
%--------------------------------------------------------------------------

printAmendment7 :-
write('In suits at common law, where the value in controversy shall exceed twenty dollars, the right of trial by jury shall be preserved, and no fact tried by a jury, shall be otherwise re-examined in any Court of the United States, than according to the rules of the common law.').
right(X, trialByJury).

% Amendment 8
%--------------------------------------------------------------------------

printAmendment8 :-
write('Excessive bail shall not be required, nor excessive fines imposed, nor cruel and unusual punishments inflicted.').
right(X, noExcessiveBail).
right(X, noExcessiveFines).
right(X, noCruelPunishments).
right(X, noUnusualPunishments).

% Amendment 9
%--------------------------------------------------------------------------

printAmendment9 :-
write('The enumeration in the Constitution, of certain rights, shall not be construed to deny or disparage others retained by the people.').
right(X, haveRights(notInConstitution)).

% Amendment 10
%--------------------------------------------------------------------------

printAmendment10 :-
write('The powers not delegated to the United States by the Constitution, nor prohibited by it to the States, are reserved to the States respectively, or to the people.').
right(X, havePowers(notInConstitution)).

% Amendment 11
%--------------------------------------------------------------------------

% Judicial power of the US is applicable only for us Citizens
judicialPowerOfUS(X):- citizen(X,_).


% Amendment 12
%--------------------------------------------------------------------------

% Amendment 12 and Section 3 of Amendment 20
procedureForRatificationOfPresidentAndVicePresident() :-
write('The Electors shall meet in their respective states, and vote by ballot for President and Vice-President, one of whom, at least, shall not be an inhabitant of the same state with themselves; they shall name in their ballots the person voted for as President, and in distinct ballots the person voted for as Vice-President, and they shall make distinct lists of all persons voted for as President, and of all persons voted for as Vice-President, and of the number of votes for each, which lists they shall sign and certify, and transmit sealed to the seat of the government of the United States, directed to the President of the Senate;-the President of the Senate shall, in the presence of the Senate and House of Representatives, open all the certificates and the votes shall then be counted;-The person having the greatest number of votes for President, shall be the President, if such number be a majority of the whole number of Electors appointed; and if no person have such majority, then from the persons having the highest numbers not exceeding three on the list of those voted for as President, the House of Representatives shall choose immediately, by ballot, the President. But in choosing the President, the votes shall be taken by states, the representation from each state having one vote; a quorum for this purpose shall consist of a member or members from two-thirds of the states, and a majority of all the states shall be necessary to a choice.If, at the time fixed for the beginning of the term of the President, the President elect shall have died, the Vice President elect shall become President. If a President shall not have been chosen before the time fixed for the beginning of his term, or if the President elect shall have failed to qualify, then the Vice President elect shall act as President until a President shall have qualified; and the Congress may by law provide for the case wherein neither a President elect nor a Vice President shall have qualified, declaring who shall then act as President, or the manner in which one who is to act shall be selected, and such person shall act accordingly until a President or Vice President shall have qualified. The person having the greatest number of votes as Vice-President, shall be the Vice-President, if such number be a majority of the whole number of Electors appointed, and if no person have a majority, then from the two highest numbers on the list, the Senate shall choose the Vice-President; a quorum for the purpose shall consist of two-thirds of the whole number of Senators, and a majority of the whole number shall be necessary to a choice. But no person constitutionally ineligible to the office of President shall be eligible to that of Vice-President of the United States.').

% Amendment 13
%--------------------------------------------------------------------------

% Section 1
slavery(existence,onlyAs(punishmentFor(crime))).

% Section 2
power(congress,enforce(amendment13(byAppropriateLegislation))).

% Amendment 14
%--------------------------------------------------------------------------

% Section 1
isUsCitizen(X):-bornInUS(X);naturalized(X).
right(X, life(shallNotBeDeprived)).
right(X, liberty(shallNotBeDeprived)).
right(X, property(shallNotBeDeprived)).


% Section 2
noOfRepresentatives(state, proportionalTo(population(state))).

% Section 3
insurrection(againstUS, cannot(hold(publicOffice))).

% Section 4 
publicDebt(invalid, incurred(inAid(insurrection))).

% Section 5
power(congress, enforce(ammendment14(byAppropriateLegislation))).

% Amendment 15
%--------------------------------------------------------------------------

% Section 1
right(X, vote(shallNotBeDenied(onBasisOf(raceOrColorOrStatusOfServitude)))).

% Section 2
power(congress, enforce(ammendement15(byAppropriateLegislation))).

% Amendment 16
%--------------------------------------------------------------------------

% Section 9 of Article 1 was modified by the 16th amendment

% Describes the power to the congress to lay and collect taxes
power(congress,layTaxes(withoutApportionmentAmongStates(withoutCensus))).

% Amendment 17
%--------------------------------------------------------------------------

% Section 3 of Article 1 was modified by the 17th amendment
compositionOfTheSenate(senator):-
    write('The Senate of the United States shall be composed of two Senators from each State. \n') , 
    write('Senators shall be elected by the people thereof, for six years; and each Senator shall have one vote. \n') , 
    write('The electors in each State shall have the qualifications requisite for electors of the most numerous branch of the State legislatures. \n').

vacancyInSenate(state) :-
    write('When vacancies happen in the representation of any State in the Senate, the executive authority of such State shall issue writs of election to fill such vacancies.\n') , 
    write('This amendment shall not be so construed as to affect the election or term of any Senator chosen before it becomes valid as part of the Constitution. \n').


% Amendment 18
%--------------------------------------------------------------------------

% Repealed by Amendment 21
% prohibition(liquor) :-
%     write('After one year from the ratification of this article the
%         manufacture, sale, or transportation of intoxicating liquors
%         within, the importation thereof into, or the exportation
%         thereof from the United States and all territory subject to
%         the jurisdiction thereof for beverage purposes is hereby
%         prohibited.').
    


% Amendment 19
%--------------------------------------------------------------------------

right(X, toVote(shallNotBeDenied(onBasisOfGender))).

% Amendment 20
%--------------------------------------------------------------------------

% Section 1
termEnd(presidentAndVicePresident, twentyJan(noon)).
termEnd(senatorAndRepresentative, thirdJan(noon)).

% Section 2
meetingOfCongress(D,M,Y):-
    write('The Congress shall assemble at least once in every Year, and such Meeting shall begin at noon on the 3rd day of january'),
    M=1,
    D=3.

% Section 4 
power(congress, choose(presidentAndVicePresident(inCaseDeath))) . 

% Section 5
comeIntoEffect(section1And2, october(15)) . 


% Amendment 21
%--------------------------------------------------------------------------

% Section 2 
prohibited(transportation, intoxicatingLiquor).

% Amendment 22
%--------------------------------------------------------------------------

maxNumOfTerms(president, 2).

% Amendment 23
%--------------------------------------------------------------------------
power(congress , appointToSeat(districtConstituting(government))).
grant(votingRight(citizenOf(district))).

% Amendment 24
%--------------------------------------------------------------------------

% Section 1
right(X, toVote(notBeDebarred(citizen))).

% Section 2 
power(congress, enforce(amendment24)).

% Amendment 25
%--------------------------------------------------------------------------

% Section 1
vacancyInOffice(president, vicePresident(becomes(president))).

% Section 2
vacancyInOffice(vicePresident, president(appoints(vicePresident))). 

% Section 3
unableToDischargeDuties(president(transmits(declaration))).
unableToDischargeDuties(president, vicePresident(actingPresident)).

% Section 4
unableToDischargeDuties(president, vicePresident) :-
write('The Vice President shall immediately assume the powers and duties of the office as Acting President.Thereafter, when the President transmits to the President pro tempore of the Senate and the Speaker of the House of Representatives his written declaration that no inability exists, he shall resume the powers and duties of his offi ce unless the Vice President and a majority of either the principal officers of the executive department or of such other body as Congress may by law provide, transmit within four days to the President pro tempore of the Senate and the Speaker of the House of Representatives their written declaration that the President is unable to discharge the powers and duties of his offi ce. Thereupon Congress shall decide the issue, assembling within forty-eight hours for that purpose if not in session. If the Congress, within twenty-one days after receipt of the latter written declaration, or, if Congress is not in session, within twenty-one days after Congress is required to assemble, determines by two-thirds vote of both Houses that the President is unable to discharge the powers and duties of his office, the Vice President shall continue to discharge the same as Acting President; otherwise, the President shall resume the powers and duties of his office').

% Amendment 26
%--------------------------------------------------------------------------

% Section 1 
right(vote , X) :- 
    age(X,Age),
    citizen(X,_),
    Age>=18.

% Amendment 27
%--------------------------------------------------------------------------

noChangeInCompensation(senatorAndRepresentative(untilElection)).


%END