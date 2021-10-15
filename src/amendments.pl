% Preamble to the Bill of Rights

preambleToBillOfRights :-
    write('CONGRESS OF THE UNITED STATES BEGUN AND HELD AT THE CITY OF NEW-YORK, ON WEDNESDAY THE FOURTH OF MARCH, ONE THOUSAND SEVEN HUNDRED AND EIGHTY NINE\n\n'),
    write('THE Conventions of a number of the States, having at the time of their adopting the Constitution, expressed a desire, in order to prevent misconstruction or abuse of its powers, that further declaratory and restrictive clauses should be added: And as extending the ground of public confidence in the Government, will best ensure the beneficent ends of its institution\n\n'),
    write('RESOLVED by the Senate and House of Representatives of the United States of America, in Congress assembled, two thirds of both Houses concurring, that the following Articles be proposed to the  legislatures of the several States, as amendments to the Constitution of the United States, all, or any of which Articles, when ratifi ed by three fourths of the said Legislatures, to be valid to all intents and purposes, as part of the said Constitution; viz.\n\n'),
    write('ARTICLES in addition to, and Amendment of the Constitution of the United States of America, proposed by Congress, and ratifi ed by the Legislatures of the several States, pursuant to the fifth  Article of the original Constitution.').

amendment1 :-
    write('Congress shall make no law respecting an establishment of religion, or prohibiting the free exercise thereof; or abridging the freedom of speech, or of the press, or the right of the people peaceably to assemble, and to petition the Government for a redress of grievances.').

amendment2 :-
    write('A well regulated Militia, being necessary to the security of a free State, the right of the people to keep and bear Arms, shall not be infringed.').

amendment3 :-
    write('No Soldier shall, in time of peace be quartered in any house, without the consent of the Owner, nor in time of war, but in a manner to be prescribed by law.').

amendment4 :-
    write('The right of the people to be secure in their persons, houses, papers, and effects, against unreasonable searches and seizures, shall not be violated, and no Warrants shall issue, but upon probable cause, supported by Oath or affirmation, and particularly describing the place to be searched, and the persons or things to be seized.').

amendment5 :-
    write('No person shall be held to answer for a capital, or otherwise infamous crime, unless on a presentment or indictment of a Grand Jury, except in cases arising in the land or naval forces, or in the Militia, when in actual service in time of War or public danger; nor shall any person be subject for the same offence to be twice put in jeopardy of life or limb; nor shall be compelled in any criminal case to be a witness against himself, nor be deprived of life, liberty, or property, without due process of law; nor shall private property be taken for public use, without just compensation.').

amendment6 :-
    write('In all criminal prosecutions, the accused shall enjoy the right to a speedy and public trial, by an impartial jury of the State and district wherein the crime shall have been committed, which district shall have been previously ascertained by law, and to be informed of the nature and cause of the accusation; to be confronted with the witnesses against him; to have compulsory process for obtaining witnesses in his favor, and to have the Assistance of Counsel for his defence.').

amendment7 :-
    write('In suits at common law, where the value in controversy shall exceed twenty dollars, the right of trial by jury shall be preserved, and no fact tried by a jury, shall be otherwise re-examined in any Court of the United States, than according to the rules of the common law.').
    
amendment8 :-
    write('Excessive bail shall not be required, nor excessive fines imposed, nor cruel and unusual punishments inflicted.').

amendment9 :-
    write('The enumeration in the Constitution, of certain rights, shall not be construed to deny or disparage others retained by the people.').

amendment10 :-
    write('The powers not delegated to the United States by the Constitution, nor prohibited by it to the States, are reserved to the States respectively, or to the people.').

% Amendment 12 and Section 3 of Amendment 20
procedureForRatificationOfPresidentAndVicePresident() :-
    write('The Electors shall meet in their respective states, and vote by ballot for President and Vice-President, one of whom, at least, shall not be an inhabitant of the same state with themselves; they shall name in their ballots the person voted for as President, and in distinct ballots the person voted for as Vice-President, and they shall make distinct lists of all persons voted for as President, and of all persons voted for as Vice-President, and of the number of votes for each, which lists they shall sign and certify, and transmit sealed to the seat of the government of the United States, directed to the President of the Senate;-the President of the Senate shall, in the presence of the Senate and House of Representatives, open all the certificates and the votes shall then be counted;-The person having the greatest number of votes for President, shall be the President, if such number be a majority of the whole number of Electors appointed; and if no person have such majority, then from the persons having the highest numbers not exceeding three on the list of those voted for as President, the House of Representatives shall choose immediately, by ballot, the President. But in choosing the President, the votes shall be taken by states, the representation from each state having one vote; a quorum for this purpose shall consist of a member or members from two-thirds of the states, and a majority of all the states shall be necessary to a choice.If, at the time fixed for the beginning of the term of the President, the President elect shall have died, the Vice President elect shall become President. If a President shall not have been chosen before the time fixed for the beginning of his term, or if the President elect shall have failed to qualify, then the Vice President elect shall act as President until a President shall have qualified; and the Congress may by law provide for the case wherein neither a President elect nor a Vice President shall have qualified, declaring who shall then act as President, or the manner in which one who is to act shall be selected, and such person shall act accordingly until a President or Vice President shall have qualified. The person having the greatest number of votes as Vice-President, shall be the Vice-President, if such number be a majority of the whole number of Electors appointed, and if no person have a majority, then from the two highest numbers on the list, the Senate shall choose the Vice-President; a quorum for the purpose shall consist of two-thirds of the whole number of Senators, and a majority of the whole number shall be necessary to a choice. But no person constitutionally ineligible to the office of President shall be eligible to that of Vice-President of the United States.').

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