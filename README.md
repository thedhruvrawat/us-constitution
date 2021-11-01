<p align="center"> <img src="https://wallpaperaccess.com/full/1793755.jpg"></p>

# US Constitution in `Prolog`

![Language](https://img.shields.io/static/v1?label=Language&message=Prolog&color=brightgreen&style=for-the-badge)
&nbsp;
![Platform](https://img.shields.io/static/v1?label=Platform&message=SWI-Prolog&color=informational&style=for-the-badge)
&nbsp;
![Contributers](https://img.shields.io/static/v1?label=Contributers&message=5&color=important&style=for-the-badge)

Codebase for <b>CS F214: Logic in Computer Science</b> Course Assignment

## Task
To create a well-commented knowledge base in `Prolog` for the given US Constitution document. The document consists of information about different bodies of the US government. Loading the knowledge base should be able to perform queries for the structure of the government, the power of different bodies of government, the various criteria for candidates to be eligible for a position, etc. as given in the document.

[Problem Statement](resources/problemstatement.pdf)

[Constitution document](resources/constitution.pdf)

## Result

```prolog
1 ?-[main].
true.

2 ?- qualified(X, houseOfRepresentatives).
X = meera ;
X = david ;
X = leonard ;
false.

3 ?- power(congress, X).
X = lay(tax) ;
X = lay(duties) ;
X = lay(imposts) ;
X = lay(excises) ;
X = collect(tax) ;
X = collect(duties) ;
X = collect(imposts) ;
X = collect(excises) ;
X = pay(debts) ;
X = provide('common defence') ;
X = provide('general welfare') ;
X = borrow(money) ;
X = regulate(commerce(foreign-nations)) ;
X = regulate(commerce(among-states)) ;
X = regulate(commerce(indian-tribes)) ;
X = establish(ruleOfNaturalization) ;
X = establish(lawOnBankruptcy) ;
X = coin(money) ;
X = regulate(money) ;
X = regulate(foreign-coin) ;
X = fix(standardOfWeightsAndMeasures) ;
X = provide(punishment(counterfeiting(securities))) ;
X = provide(punishment(counterfeiting(currentCoin))) ;
X = establish(postOffices) ;
X = establish(postRoads) ;
X = promote(science) ;
X = promote(usefulArts) ;
X = secure(exclusiveRight(writings(authors))) ;
X = secure(exclusiveRight(inventors(discoveries))) ;
X = constitute(tribunals) ;
X = define(piraciesInHighSeas) ;
X = define(feloniesInHighSeas) ;
X = define(offensesAgainstLawOfNations) ;
X = punish(piraciesInHighSeas) ;
X = punish(feloniesInHighSeas) ;
X = punish(offensesAgainstLawOfNations) ;
X = declare(war) ;
X = grant(letters(marque)) ;
X = grant(letters(reprisal)) ;
X = make(rules(captures)) ;
X = raise(armies) ;
X = support(armies) ;
X = provide(navy) ;
X = maintain(navy) ;
X = make(rules(for(government))) ;
X = make(rules(for(regulation(landForce)))) ;
X = make(rules(for(regulation(navalForce)))) ;
X = provide(callingMilitia(to(execute(laws)))) ;
X = provide(callingMilitia(to(suppress(insurrections)))) ;
X = provide(callingMilitia(to(repel(invasions)))) ;
X = provide(for(organizing(militia))) ;
X = provide(for(arming(militia))) ;
X = provide(for(disciplining(militia))) ;
X = governing(militia(employedInServiceOfUS)) ;
X = exercise(exclusiveLegislation(erection(forts))) ;
X = exercise(exclusiveLegislation(erection(magazines))) ;
X = exercise(exclusiveLegislation(erection(arsenals))) ;
X = exercise(exclusiveLegislation(erection(dock-yards))) ;
X = make(laws(for(executionOfAllPowers(vestedByConstitution(in(governmentOfUS)))))) ;
X = make(laws(for(executionOfAllPowers(vestedByConstitution(in(anyDepartmentOrOfficer)))))) ;
X = determine(time(choosing(electors))) ;
X = determine(day(voting(electors))) ;
X = change(modeOfAppointment(inferiorOfficer)) ;
X = make(laws(toGiveFaithAndCredit(toLawsOfStateInOtherStates))) ;
X = admit(newStates) ;
X = dispose(rules(respectingTerritoryOfUS)) ;
X = make(rules(respectingTerritoryOfUS)) ;
X = dispose(rules(respectingPropertyOfUS)) ;
X = make(rules(respectingPropertyOfUS)) ;
X = proposeAmmendments(_14564) ;
X = callConventionForAmmendments(_15222) ;
X = enforce(amendment13(byAppropriateLegislation)) ;
X = enforce(ammendment14(byAppropriateLegislation)) ;
X = enforce(ammendement15(byAppropriateLegislation)) ;
X = layTaxes(withoutApportionmentAmongStates(withoutCensus)) ;
X = choose(presidentAndVicePresident(inCaseDeath)) ;
X = appointToSeat(districtConstituting(government)) ;
X = enforce(amendment24).

4 ?- executivePower(X).
X = president.

5 ?- right(george, X).
X = peacefulAssembly ;
X = freeExercise(religion) ;
X = freedom(speech) ;
X = freedom(press) ;
X = petition(government(grievanceRedressal)) ;
X = keep(arms) ;
X = bear(arms) ;
X = toBeSecure(in(person)) ;
X = toBeSecure(in(houses)) ;
X = toBeSecure(in(papersAndEffects)) ;
X = toBeSecure(against(unreasonableSearches)) ;
X = toBeSecure(against(warrants(withoutProbableCause))) ;
X = not(held(withoutIndictment)) ;
X = not(putInJeopardy(life)) ;
X = not(putInJeopardy(limb)) ;
X = not(compelledAsWitness(againstHimself)) ;
X = not(deprived(life)) ;
X = not(deprived(limb)) ;
X = not(deprived(property)) ;
X = privateProperty ;
X = speedyTrial(impartialJury(districtOfCrime)) ;
X = publicTrial(impartialJury(districtOfCrime)) ;
X = obtainWitnessesInFavor ;
X = assistanceOfCounsel(forDefence) ;
X = trialByJury ;
X = noExcessiveBail ;
X = noExcessiveFines ;
X = noCruelPunishments ;
X = noUnusualPunishments ;
X = haveRights(notInConstitution) ;
X = havePowers(notInConstitution) ;
X = life(shallNotBeDeprived) ;
X = liberty(shallNotBeDeprived) ;
X = property(shallNotBeDeprived) ;
X = vote(shallNotBeDenied(onBasisOf(raceOrColorOrStatusOfServitude))) ;
X = toVote(shallNotBeDenied(onBasisOfGender)) ;
X = toVote(notBeDebarred(citizen)).

6 ?- protectionAgainstInvasion(georgia).
true.

7 ?- commanderInChiefOfArmy(X).
X = president.

8 ?- power(X, grant(pardon(offenseAgainstUS))).
X = president.

9 ?- power(northCarolina, collect(tax)).
false.

10 ?- presidentOfSenate(X).
X = vicePresident.

11 ?- meetingOfCongress(D, M, 2019).
The Congress shall assemble at least once in every Year, and such Meeting shall begin at noon on the 3rd day of January
D = 3,
M = 1.
```

## Contributors

- [Dhruv Rawat](https://github.com/thedhruvrawat)
- [Hrithik Raj Gupta](https://github.com/hrithikgupt)
- [Rajan Sahu](https://github.com/RAJAN13-blip)
- [Bhanupratap Rathore](https://github.com/superbhanu22)
- [Sarang Sridhar](https://github.com/sarang-sridhar)

## License
[MIT](https://choosealicense.com/licenses/mit/)