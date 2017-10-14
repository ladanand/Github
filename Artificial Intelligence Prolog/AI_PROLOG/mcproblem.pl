 boat_state(1,1).
    boat_state(1,0).
    boat_state(0,2).
    boat_state(0,1).
    boat_state(2,0).

    zero(X,Y):-
        X=0,Y\=0.

    validate(Left_miss,Left_cann,Right_miss,Right_cann):-
        Total_miss=Left_miss+Right_miss,
        Total_cann=Left_cann+Right_cann,
        Total_miss=3,Total_cann=3,
        Left_miss>=0,Left_cann>=0,
        Right_miss>=0,Right_cann>=0,
        Left_miss>=Left_cann,Right_miss>=Right_cann.

    validate(Left_miss,Left_cann,Right_miss,Right_cann):-
        Total_miss=Left_miss+Right_miss,
        Total_cann=Left_cann+Right_cann,
        Total_miss=3,Total_cann=3,
        Left_miss>=0,Left_cann>=0,
        Right_miss>=0,Right_cann>=0,
        zero(Left_miss,Left_cann);

        Total_miss=Left_miss+Right_miss,
        Total_cann=Left_cann+Right_cann,
        Total_miss=3,Total_cann=3,
        Left_miss>=0,Left_cann>=0,
        Right_miss>=0,Right_cann>=0,
        zero(Right_miss,Right_cann).

    go(_,0,0,3,3):-
        write("\nProblem Solved").

    go(left_to_right,Left_miss,Left_cann,Right_miss,Right_cann):-
        boat_state(Person1,Person2),
        New_left_miss=Left_miss-Person1,
        New_left_cann=Left_cann-Person2,
        New_right_miss=Right_miss+Person1,
        New_right_cann=Right_cann+Person2,
        \+(entry(right_to_left,New_left_miss,New_left_cann,New_right_miss,New_right_cann)),
        val.
