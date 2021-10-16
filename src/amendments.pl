% Preamble to the Bill of Rights

% right(X) :- citizen(X, Y).

preambleToBillOfRights :-
    write('CONGRESS OF THE UNITED STATES BEGUN AND HELD AT THE CITY OF NEW-YORK, ON WEDNESDAY THE FOURTH OF MARCH, ONE THOUSAND SEVEN HUNDRED AND EIGHTY NINE\n\n'),
    write('THE Conventions of a number of the States, having at the time of their adopting the Constitution, expressed a desire, in order to prevent misconstruction or abuse of its powers, that further declaratory and restrictive clauses should be added: And as extending the ground of public confidence in the Government, will best ensure the beneficent ends of its institution\n\n'),
    write('RESOLVED by the Senate and House of Representatives of the United States of America, in Congress assembled, two thirds of both Houses concurring, that the following Articles be proposed to the  legislatures of the several States, as amendments to the Constitution of the United States, all, or any of which Articles, when ratifi ed by three fourths of the said Legislatures, to be valid to all intents and purposes, as part of the said Constitution; viz.\n\n'),
    write('ARTICLES in addition to, and Amendment of the Constitution of the United States of America, proposed by Congress, and ratifi ed by the Legislatures of the several States, pursuant to the fifth  Article of the original Constitution.').

amendment1 :-
    write('Congress shall make no law respecting an establishment of religion, or prohibiting the free exercise thereof; or abridging the freedom of speech, or of the press, or the right of the people peaceably to assemble, and to petition the Government for a redress of grievances.').


right(X, peacefulAssembly).
right(X, freeExercise(religion)).
right(X, freedom(speech)).
right(X, freedom(press)).
right(X, petition(government(grievanceRedressal))).

amendment2 :-
    write('A well regulated Militia, being necessary to the security of a free State, the right of the people to keep and bear Arms, shall not be infringed.').
right(X, keep(arms)).
right(X, bear(arms)).

amendment3 :-
    write('No Soldier shall, in time of peace be quartered in any house, without the consent of the Owner, nor in time of war, but in a manner to be prescribed by law.').

amendment4 :-
    write('The right of the people to be secure in their persons, houses, papers, and effects, against unreasonable searches and seizures, shall not be violated, and no Warrants shall issue, but upon probable cause, supported by Oath or affirmation, and particularly describing the place to be searched, and the persons or things to be seized.').
right(X, toBeSecure(in(person))).
right(X, toBeSecure(in(houses))).
right(X, toBeSecure(in(papersAndEffects))).
right(X, toBeSecure(against(unreasonableSearches))).
right(X, toBeSecure(against(warrants(withoutProbableCause)))).


amendment5 :-
    write('No person shall be held to answer for a capital, or otherwise infamous crime, unless on a presentment or indictment of a Grand Jury, except in cases arising in the land or naval forces, or in the Militia, when in actual service in time of War or public danger; nor shall any person be subject for the same offence to be twice put in jeopardy of life or limb; nor shall be compelled in any criminal case to be a witness against himself, nor be deprived of life, liberty, or property, without due process of law; nor shall private property be taken for public use, without just compensation.').
right(X, not(held(withoutIndictment))).
right(X, not(putInJeopardy(life))).
right(X, not(putInJeopardy(limb))).
right(X, not(compelledAsWitness(againstHimself))).
right(X, not(deprived(life))).
right(X, not(deprived(limb))).
right(X, not(deprived(property))).
right(X, privateProperty).


amendment6 :-
    write('In all criminal prosecutions, the accused shall enjoy the right to a speedy and public trial, by an impartial jury of the State and district wherein the crime shall have been committed, which district shall have been previously ascertained by law, and to be informed of the nature and cause of the accusation; to be confronted with the witnesses against him; to have compulsory process for obtaining witnesses in his favor, and to have the Assistance of Counsel for his defence.').
right(X, speedyTrial(impartialJury(districtOfCrime))).
right(X, publicTrial(impartialJury(districtOfCrime))).
right(X, obtainWitnessesInFavor).
right(X, assistanceOfCounsel(forDefence)).


amendment7 :-
    write('In suits at common law, where the value in controversy shall exceed twenty dollars, the right of trial by jury shall be preserved, and no fact tried by a jury, shall be otherwise re-examined in any Court of the United States, than according to the rules of the common law.').

right(X, trialByJury).

amendment8 :-
    write('Excessive bail shall not be required, nor excessive fines imposed, nor cruel and unusual punishments inflicted.').
right(X, noExcessiveBail).
right(X, noExcessiveFines).
right(X, noCruelPunishments).
right(X, noUnusualPunishments).

amendment9 :-
    write('The enumeration in the Constitution, of certain rights, shall not be construed to deny or disparage others retained by the people.').
right(X, haveRights(notInConstitution)).

amendment10 :-
    write('The powers not delegated to the United States by the Constitution, nor prohibited by it to the States, are reserved to the States respectively, or to the people.').
rights(X, havePowers(notInConstitution)).

% ammendment 11
%judicial power of US is applicable only for us Citizens
judicialPowerOfUS(X):- citizen(X,_).



% Amendment 12 and Section 3 of Amendment 20
procedureForRatificationOfPresidentAndVicePresident() :-
    write('The Electors shall meet in their respective states, and vote by ballot for President and Vice-President, one of whom, at least, shall not be an inhabitant of the same state with themselves; they shall name in their ballots the person voted for as President, and in distinct ballots the person voted for as Vice-President, and they shall make distinct lists of all persons voted for as President, and of all persons voted for as Vice-President, and of the number of votes for each, which lists they shall sign and certify, and transmit sealed to the seat of the government of the United States, directed to the President of the Senate;-the President of the Senate shall, in the presence of the Senate and House of Representatives, open all the certificates and the votes shall then be counted;-The person having the greatest number of votes for President, shall be the President, if such number be a majority of the whole number of Electors appointed; and if no person have such majority, then from the persons having the highest numbers not exceeding three on the list of those voted for as President, the House of Representatives shall choose immediately, by ballot, the President. But in choosing the President, the votes shall be taken by states, the representation from each state having one vote; a quorum for this purpose shall consist of a member or members from two-thirds of the states, and a majority of all the states shall be necessary to a choice.If, at the time fixed for the beginning of the term of the President, the President elect shall have died, the Vice President elect shall become President. If a President shall not have been chosen before the time fixed for the beginning of his term, or if the President elect shall have failed to qualify, then the Vice President elect shall act as President until a President shall have qualified; and the Congress may by law provide for the case wherein neither a President elect nor a Vice President shall have qualified, declaring who shall then act as President, or the manner in which one who is to act shall be selected, and such person shall act accordingly until a President or Vice President shall have qualified. The person having the greatest number of votes as Vice-President, shall be the Vice-President, if such number be a majority of the whole number of Electors appointed, and if no person have a majority, then from the two highest numbers on the list, the Senate shall choose the Vice-President; a quorum for the purpose shall consist of two-thirds of the whole number of Senators, and a majority of the whole number shall be necessary to a choice. But no person constitutionally ineligible to the office of President shall be eligible to that of Vice-President of the United States.').

% Amendment 13
% Section 1
 
 slavery(existence,onlyAs(punishmentFor(crime))).


% Section 2
power(congress,enforce(amendment13(byAppropriateLegislation))).

% Amendment 14 

    % section1 of the 14th amendment

     isUsCitizen(X):-bornInUS(X);naturalized(X).

    % noStateShallBring(law):-
    %     write('which abridges the priviledges , immunities of US citizens , also it shall not deprive any citizen from life , liberty and property\n').

    right(life,shallNotBeDeprived).
    right(liberty,shallNotBeDeprived).
    right(property,shallNotBeDeprived).


    % section2 of the 14th amendment

    % divisionOfRepresentatives() :- 
    %     write('proportinal to the population of the state excluding Indians not taxed'). 
    noOfRepresentatives(state,proportinalto(population(state))).

    % section 3 of the 14th amendment
    %    enagedInInsurrectionAgainstUS:-
    %      write('Cannot be e a Senator or Representative in Congress, or elector of President and Vice President, or hold any offi ce, civil or military, under the United States, or under any State').
    insurrection(againstUS,cannot(hold(publicOffice))).

    % section 4 of the 14th amendment
    %    validityOfPublicDebt:-
    %        write('The validity of the public debt of the United States, authorized by law, including debts incurred for payment of pensions and bounties for services in suppressing insurrection or rebellion, shall not be questioned').

   publicDebt(invalid,incurred(inAid(insurrection))).
        % publicDebtIsInvalid:-
        %     write('neither the United States nor any State shall assume or pay any debt or obligation incurred in aid of insurrection or rebellion against the United States, or any claim for the loss or emancipation of any slave').

    % section5 of the 14th amendment
    
    % powerToImpose(congress):-
    %     write('The Congress shall have the power to enforce, by appropri- ate legislation, the provisions of this article'). 
    power(congress,enforece(ammendement14(byAppropriateLegislation))).

% Amendment 15
   %section 1
    %  rightToVote:-
    %      write('The right of citizens of the United States to vote shall not be denied or abridged by the United States or by any State on account of race, color, or previous condition of servitude. ').
    right(vote,shallNotBeDenied(onBasisOf(raceOrColorOrStatusOfServitude))).

    %section 2
    power(congress,enforce(ammendement15(byAppropriateLegislation))).

% Amendment 16 
    % Section 9 of article 1 was modified by the 16th amendment

    % describes the power to the congress to lay and collect taxes
    power(congress,'The Congress shall have power to lay and collect taxes on incomes, from whatever source derived, without apportionment among the several States, and without regard to any census or enumeration' ) .
    
% Amendment 17
    % Section 3 of article 1 was modified by the 17th amendment
    compositionOfTheSenate(senator):-
        write('The Senate of the United States shall be composed of two Senators from each State. \n') , 
        write('Senators shall be elected by the people thereof, for six years; and each Senator shall have one vote. \n') , 
        write('The electors in each State shall have the qualifications requisite for elec- tors of the most numerous branch of the State legislatures. \n').

    vacancyInSenate(state) :-
        write('When vacancies happen in the representation of any State in the Senate, the executive authority of such State shall issue writs of election to fill such vacancies.\n') , 
        write('This amendment shall not be so construed as to affect the election or term of any Senator chosen before it becomes valid as part of the Constitution. \n').


%   %Amendment 18 later repealed by section 1 of amendment 21
% % Amendment 18
%      %
%      prohibition(liquor) :-
%         write('After one year from the ratifi cation of this article the
%             manufacture, sale, or transportation of intoxicating liquors
%             within, the importation thereof into, or the exportation
%             thereof from the United States and all territory subject to
%             the jurisdiction thereof for beverage purposes is hereby
%             prohibited. ').
     




%Amendment 19 
%    rightToVote :- write('The right of citizens of the United States to vote shall not be denied or abridged by the United States or by any State on account of sex. ').
  right(vote,shallNotBeDenied(onBasisOfGender)).

% Amendment 20

        % section 1
            termEnd(presidentAndVicePresident):-
                write('The terms of the President and the Vice President shall end at noon on the 20th day of January of the years in which such terms would have ended').

            termEnd(senatorAndRepresentative):-
                write(' the terms of Sena- tors and Representatives at noon on the 3d day of January of the years in which such terms would have ended').

            sideNote(articleNotEnded):-
                write(' if this article had not been ratified; and the terms of their succes- sors shall then begin.').


        % section 2
        assemble(congress):-
            write('The Congress shall assemble at least once in every year, and such meeting shall begin at noon on the 3d day of January, unless they shall by law appoint a different day').

        % section 4 
        
        power(congress , 'in case of death choose president or vice president whenever right of choice shall have devlove upon the respective house') . 


        % section 5
        ratification(section1And2):-
            write('Sections 1 and 2 shall take effect on the 15th day of Octo- ber following the ratification of this article').
        %section 6
        operations(article):-
            write('This article shall be inoperative unless it shall have been ratified as an amendment to the Constitution by the leg- islatures of three-fourths of the several States within seven years from the date of its submission').

% Amendment 22 
   termOfPresident :- 
        write('No person shall be elected to the offi ce of the President more than twice, and no person who has held the office of President, or acted as President, for more than two years of
            a term to which some other person was elected President shall be elected to the offi ce of President more than once').

% Amendment 25
% Section 1
vacancyInOffice(president) :-
    write('The Vice President shall become President').
% Section 2
vacancyInOffice(vice_president) :-
    write('The President shall nominate a Vice President who shall take offi ce upon confi rmation by a majority vote of both Houses of Congress').
% Section 3
unableToDischargeDuties(president,president) :-
    write('Until the President transmits a written declaration to the contrary, such powers and duties shall be discharged by the Vice President as Acting President').
% Section 4
unableToDischargeDuties(president,vice_president) :-
    write('The Vice President shall immediately assume the powers and duties of the office as Acting President.Thereafter, when the President transmits to the President pro tempore of the Senate and the Speaker of the House of Representatives his written declaration that no inability exists, he shall resume the powers and duties of his offi ce unless the Vice President and a majority of either the principal officers of the executive department or of such other body as Congress may by law provide, transmit within four days to the President pro tempore of the Senate and the Speaker of the House of Representatives their written declaration that the President is unable to discharge the powers and duties of his offi ce. Thereupon Congress shall decide the issue, assembling within forty-eight hours for that purpose if not in session. If the Congress, within twenty-one days after receipt of the latter written declaration, or, if Congress is not in session, within twenty-one days after Congress is required to assemble, determines by two-thirds vote of both Houses that the President is unable to discharge the powers and duties of his office, the Vice President shall continue to discharge the same as Acting President; otherwise, the President shall resume the powers and duties of his office').