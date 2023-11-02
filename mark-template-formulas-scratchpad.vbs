
=IF([@Final]="","",
  IF([@[Wrote_Sup]],
    IF([@Sup]<50,"FAL","PAS"),
  IF([@[Exam/Def]]<35,"FSB",
    IF([@Final]<50,"FAL",
    IF([@Final]>=50,"PAS",
  "Error!")))))

=IF([@Student], IFNA(INDEX(Engage[Total (%)],MATCH([@[Student No.]],Engage[Student No.],0))&"", "Cannot find student!"),"No student!")


=IF([@Student],
  IF(ISNA(INDEX(Project[Total (%)],MATCH([@[Student No.]],Project[Student No.],0))),
    "Cannot find student!",
    IF(INDEX(Project[Total (%)],MATCH([@[Student No.]],Project[Student No.],0))="",
      "",
      INDEX(Project[Total (%)],MATCH([@[Student No.]],Project[Student No.],0)))
    ),
  "No student!")



=IF(COUNTBLANK(C7)=1,FALSE,
  IF(c7="DEF", FALSE,
  IF(IFERROR(value(c7)),TRUE,
  IF(AND(VALUE(C7)>=0,VALUE(C7)<=100),FALSE,TRUE))))

=IF(COUNTBLANK(C7)=1,FALSE,
  IF(c7="DEF", FALSE,
  IF(IsERROR(value(c7)),TRUE,
  IF(AND(VALUE(C7)>=0,VALUE(C7)<=100),FALSE,TRUE))))

=IF(COUNTBLANK(C7)=1,FALSE,   IF(ISNUMBER(FIND("DEF", C7)), FALSE,   IF(ISERROR(VALUE(C7)),TRUE,   IF(AND(VALUE(C7)>=0,VALUE(C7)<=100),FALSE,TRUE))))

=IF(COUNTBLANK(C7)=1,FALSE,   IF(ISNUMBER(FIND("DEF", C7)), FALSE,   IF(ISERROR(C7),TRUE,   IF(AND(C7>=0,C7<=100),FALSE,TRUE))))

=IF(NOT(ISBLANK($A7)),NOT(OR(AND(C7>=0,C7<=100),COUNTBLANK(C7)=1,ISNUMBER(FIND("DEF", C7)))),FALSE)

=IF(NOT(ISBLANK($A7)),NOT(OR(AND(ISNUMBER(C7),C7>=0,C7<=100),COUNTBLANK(C7)=1,ISNUMBER(FIND("DEF", C7)))),FALSE)

=IF(And(COUNTBLANK(C7)=0,c7<>"DEF"),
  IF(AND(C7>=0,C7<=100),FALSE,TRUE),
  IF(COUNTBLANK(C7)="DEF",FALSE,TRUE),
  FALSE)

)

=IF(ISERROR(VALUE(All[@Engagement])),FALSE,OR(VALUE(All[@Engagement])<=100),VALUE(All[@Engagement]>=100))

=$C$7:$I$173,$L$7:$L$173,$N$7:$N$173

=IF(NOT(ISBLANK($A7)),NOT(OR(ISNUMBER(FIND("FSB", M7)),ISNUMBER(FIND("PAS", M7)),ISNUMBER(FIND("FAL", M7)),ISNUMBER(FIND("FAB", M7)),COUNTBLANK(M7)=1)),FALSE)

=$M$7:$M$173,$O$7:$O$173


=IF([@Final]="","",IF([@[Exam/Def]]<35, "FSB",IF([@Final]<50,"FAL",IF([@Final]>=50,"PAS","Error!"))))

=IF([@[Student Exists Exam]],
    IF([@Student],
      IF([@[Wrote Sup]], INDEX(Sup[Total (%)], MATCH([Student No.],Sup[Student No.],0)),
      IF([@[Wrote Def]], INDEX(Def[Total (%)], MATCH([Student No.],Def[Student No.],0)),
      IF([@[Wrote Exam]], INDEX(Exam[Total (%)], MATCH([Student No.], Exam[Student No.],0)),""))),
    "No student!"),
  "Cannot find student!")

Wrote sup
=IF(ISNUMBER(INDEX(Sup[Total (%)],MATCH([@[Student No.]],Sup[Student No.],0))),TRUE,FALSE)

Exists sup
=IFNA(AND(MATCH([@[Student No.]],Sup[Student No.],0),TRUE),FALSE)
=IFNA(INDEX(Sup[Total (%)],MATCH([@[Student No.]],Sup[Student No.],0)))



=IF(AND([@Student], [@[All Components]]),
    IF([@[Wrote Sup]],INDEX(Sup[Total (%)], MATCH([Student No.],Sup[Student No.],0)),
    IF(exam less than 35%, ...
    IF(NOT(Wrote test), ...
    ROUND([@Engagement]*$D$4+[@Test]*$E$4+[@Project]*$F$4+[@[Exam/Def/Sup]]*$G$4,0),
    "")),
 "")

=IF(AND([@Student], [@[All Components]]),
    IF([@[Wrote Sup]], [@[Exam/Def/Sup]],
    IF([@[Exam/Def/Sup]]<35, "FSUB",
    IF(NOT(ISNUMBER([@Test])),ROUND(([@Engagement]*$C$4+[@Project]*$E$4+[@[Exam/Def/Sup]]*$F$4)/($C$4+$E$4+$F$4),0),
    ROUND(([@Engagement]*$C$4+[@Test]*$D$4+[@Project]*$E$4+[@[Exam/Def/Sup]]*$F$4)/($C$4+$D$4+$E$4+$F$4),0),"")
  )),
  "")

  =IF([@Student], IFNA(INDEX(Engage[Total (%)],MATCH([@[Student No.]],Engage[Student No.],0)), "Cannot find student!"),"No student!")
  =IF([@[Student No.]], IFNA(INDEX(ex,MATCH([@[Student No.]],Engage[Student No.],0)), "Cannot find student!"),"No student!")
  =IF([@[Student No.]], IFNA(INDEX(exam_mcq[LenientTotalMark],MATCH([@[Student No.]],exam_mcq[StudentNumber],0)), "Cannot find student!"),"No student!")
  =IF([@[Student No.]],
    IFNA(INDEX(exam_mcq[LenientTotalMark],MATCH([@[Student No.]],exam_mcq[StudentNumber],0)),
    "Cannot find student!"),
  "No student!")

IF([@[Wrote Def]], INDEX(Def[Total (%)], MATCH([@[Student No.]],Def[Student No.],0)),
  IF([@[Wrote Exam]], INDEX(Exam[Total (%)], MATCH([@[Student No.]], Exam[Student No.],0)),
    ""))


  =NOT(OR(AND(ISNUMBER(C6),C6>=0,C6<=100), C6="", AND(NOT(ISNUMBER(C6)), OR(ISNUMBER(FIND("ABS", C6)),ISNUMBER(FIND("DEF", C6)),ISNUMBER(FIND("FSUB", C6)),ISNUMBER(FIND("EXEMPT", C6))))))

= IF(AND(ISNUMBER([@Captured]), ISNUMBER([@Mine])), ABS([@Captured] - [@Mine]) <> 0,
    IF(AND(ISNUMBER([@Mine]),NOT(ISNUMBER([@Captured]))),TRUE,
    IF(AND(ISNUMBER([@captured]),NOT(ISNUMBER([@min]))),TRUE,False)
    ))

=NOT(OR(AND(ISNUMBER(C6),C6>=0,C6<=100), C6="", AND(NOT(ISNUMBER(C6)), OR(ISNUMBER(FIND("ABS", C6)),ISNUMBER(FIND("DEF", C6)),ISNUMBER(FIND("FSUB", C6)),ISNUMBER(FIND("EXEMPT", C6))))))


="  =NOT(OR(AND(ISNUMBER(C6),C6>=0,C6<=100), C6="""", AND(NOT(ISNUMBER(C6)), OR(ISNUMBER(FIND(""ABS"", C6)),ISNUMBER(FIND(""DEF"", C6)),ISNUMBER(FIND(""FSUB"", C6)),ISNUMBER(FIND(""EXEMPT"", C6))))))"

=NOT(OR(AND(ISNUMBER(C6),C6>=0,C6<=100), C6="""", AND(NOT(ISNUMBER(C6)), OR(ISNUMBER(FIND(""ABS"", C6)),ISNUMBER(FIND(""DEF"", C6)),ISNUMBER(FIND(""FSUB"", C6)),ISNUMBER(FIND(""EXEMPT"", C6))))))

=IF(NOT(ISBLANK($A6)),NOT(OR(AND(ISNUMBER(C6),C6>=0,C6<=100),countblank(c6)=1,ISNUMBER(FIND("DEF", C6)))),FALSE)

=OR(AND(ISNUMBER(D11),D11>=0,D11<=D$5),D11="ABS",D11="DEF")

=IF([@[Student Exists Sup]], INDEX(Sup[Total (%)],MATCH([@[Student No.]],Sup[Student No.],0)), "")
  )
    IF([@[Wrote Def]], INDEX(Def[Total (%)], MATCH([@[Student No.]],Def[Student No.],0)),
    IF([@[Wrote Exam]], INDEX(Exam[Total (%)], MATCH([@[Student No.]], Exam[Student No.],0)),""))),
  "No student!"),
"Cannot find student!")

=IF(AND([@[Student Exists Exam]],[@[Student Exists Def]]),
  IF([@Student],
    IF([@[Wrote Def]], INDEX(Def[Total (%)], MATCH([@[Student No.]],Def[Student No.],0)),
    IF([@[Wrote Exam]], INDEX(Exam[Total (%)], MATCH([@[Student No.]], Exam[Student No.],0)),"")),
  "No student!"),
"Cannot find student!")

=OR(AND(ISNUMBER(C6),C6>=0,C6<=C$4),C6="")
=OR(AND(ISNUMBER(INDIRECT("@[Component Template[Total (%)]]")),INDIRECT("@[Component Template[Total (%)]]")>=0,INDIRECT("@[Component Template[Total (%)]]")<=C$4),ISNUMBER(FIND("ABS",INDIRECT("INDIRECT("@[Component Template[Total (%)]]"))),ISNUMBER(FIND("DEF",INDIRECT("@[Component Template[Total (%)]]")))

=OR(AND(ISNUMBER(INDIRECT("[@[Total (%)]]")),INDIRECT("[@[Total (%)]]")>=0,INDIRECT("[@[Total (%)]]")<=C$4)))

=AND(ISNUMBER(INDIRECT("[@[Total (%)]]")),INDIRECT("[@[Total (%)]]")>=0,INDIRECT("[@[Total (%)]]")<=C$4)
=ISNUMBER(INDIRECT("[@[Total (%)]]"))
=INDIRECT("[@[Total (%)]]")>=0)

=ISNUMBER(INDIRECT("ComponentTemplate[@[Total (%)]]"))
=INDIRECT("All[@[Test - Absent]]")

=IF(AND([@Student], [@[All Components]]),
    IF(NOT([Has Test Mark]),ROUND(([@Engagement]*$C$6+[@Project]*$E$6+[@[Exam/Def]]*$F$6)/($C$6+$E$6+$F$6),0),
      ROUND(([@Engagement]*$C$6+[@Test]*$D$6+[@Project]*$E$6+[@[Exam/Def]]*$F$6)/($C$6+$D$6+$E$6+$F$6),0))
  ),
  "")

Data validation
=OR(AND(ISNUMBER(C6),C6<0,C6>C$4),AND(ISTEXT(c6),AND(c6<>"ABS", C6<>"DEF"))
=NOT(OR(AND(ISNUMBER(C6),C6>=0,C6<=C$4),C6="",ISNUMBER(FIND("ABS", C6)),ISNUMBER(FIND("DEF", C6)))

Conditional Formatting
=IF(ISNUMBER(C6),OR(C6<0,C6>C$4),FALSE)

=IF([@Final]="","",IF([@Final]<50,"FAL", IF([@[Exam/Def/Sup]]<35, "FSB", IF([@Final]>=50,"PAS","Error!"))))

=IF([@Final]="","",IF([@[Exam/Def/Sup]]<35, "FSB",IF([@Final]<50,"FAL",IF([@Final]>=50,"PAS","Error!"))))

=IF(AND([@[Student Exists Exam]],[@[Student Exists Def]]),
  IF([@Student],
    IF([@[Wrote Def]], INDEX(Def[Total (%)], MATCH([@[Student No.]],Def[Student No.],0)),
    IF([@[Wrote Exam]], INDEX(Exam[Total (%)], MATCH([@[Student No.]], Exam[Student No.],0)),""))),
  "No student!"),
"Cannot find student!")

=IF(AND([@Student], [@[All Components]]),
    IF(NOT([Has Test Mark]),ROUND(([@Engagement]*$C$6+[@Project]*$E$6+[@[Exam/Def]]*$F$6)/($C$6+$E$6+$F$6),0),
      ROUND(([@Engagement]*$C$6+[@Test]*$D$6+[@Project]*$E$6+[@[Exam/Def]]*$F$6)/($C$6+$D$6+$E$6+$F$6),0))
  ),
  "")

---- combined cols -----

=IF(AND([@Student], [@[All Components]]),
    IF([@[Wrote Sup]], [@[Exam/Def]],
    IF(NOT([Has Test Mark]),ROUND(([@Engagement]*$C$6+[@Project]*$E$6+[@[Exam/Def]]*$F$6)/($C$6+$E$6+$F$6),0),
    ROUND(([@Engagement]*$C$6+[@Test]*$D$6+[@Project]*$E$6+[@[Exam/Def]]*$F$6)/($C$6+$D$6+$E$6+$F$6),0))
  ),
  "")

=IF(AND([@[Student Exists Exam]],[@[Student Exists Def]],[@[Student Exists Sup]]),
  IF([@Student],
    IF([@[Wrote Sup]], INDEX(Sup[Total (%)], MATCH([@[Student No.]],Sup[Student No.],0)),
    IF([@[Wrote Def]], INDEX(Def[Total (%)], MATCH([@[Student No.]],Def[Student No.],0)),
    IF([@[Wrote Exam]], INDEX(Exam[Total (%)], MATCH([@[Student No.]], Exam[Student No.],0)),""))),
  "No student!"),
"Cannot find student!")