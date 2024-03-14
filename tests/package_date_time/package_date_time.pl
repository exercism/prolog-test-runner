:- use_module(library(date_time)).

leap(Year) :-
    date_create(Year, 2, 28, Date),
    date_add(Date, 1 days, date(Year, 2, 29)).
