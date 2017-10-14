split1([],[],[]).

split1([A],[A],[]).

split1([A,B|T],[A|P1],[B|P2]):-split1(T,P1,P2).

