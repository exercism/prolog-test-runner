pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(leap_tests).

    test(leap_year, condition(true)) :-
        leap(1996).

    test(not_leap_year, condition(pending)) :-
        not(leap(1997)).

:- end_tests(leap_tests).
