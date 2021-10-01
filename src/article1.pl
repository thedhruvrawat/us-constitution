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
partOfCongress('house of representatives').

% Section 2
%--------------------------------------------------------------------------

