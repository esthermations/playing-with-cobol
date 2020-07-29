       *> If we list all the natural numbers below 10 that are multiples
       *> of 3 or 5, we get 3, 5, 6 and 9. The sum of these is 23.
       *> Find the sum of all the multiples of 3 or 5 below 1000.

       Identification Division.
           Program-ID. Project-Euler-01.

       Data Division.
           Working-Storage Section.
           *> Main.
           01 Running-Sum      pic 9(10).
           01 Current-Number   pic 9(10).
           *> Loop.
           01 Modulo-3         pic 9(10).
           01 Modulo-5         pic 9(10).

        Procedure Division.

        Main.
           *> Initial setup
           Move 0 to Running-Sum. 
           Move 1 to Current-Number. 

           Perform Loop until Current-Number = 1000.
           Display Running-Sum. 

        Loop.
           Compute Modulo-3 = Function Mod( Current-Number, 3 ).
           Compute Modulo-5 = Function Mod( Current-Number, 5 ).

           If Modulo-3 is equal to 0 or Modulo-5 is equal to 0 then
               Compute Running-Sum = (Running-Sum + Current-Number).

           Compute Current-Number = (Current-Number + 1).
