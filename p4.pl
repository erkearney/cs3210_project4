nextItem(List,N) :- rowBelow(List,[],0,N).
                   
    
rowBelow([A,B|C], NewList,LastNumber,N) :- Z is B-A,
                            LeftOver = [B|C],
                            append(NewList,[Z],Temp),
                            rowBelow(LeftOver,Temp,LastNumber,N).
rowBelow([LastItem],NewList,LastNumber,N):-Total is LastItem + LastNumber,                                            
                                            rowBelow(NewList,[],Total,N).
rowBelow([],[],Total,N) :- N is Total.
