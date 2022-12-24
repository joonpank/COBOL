       identification division.
       program-id. calculator.
       environment division.
       data division.
      
      * This program asks user to give two numbers and one operations 
      * to perform. Calculation is form number1 operation number2
      * Operations can be "add", "sub", "mul" and "div"
      * Numbers are integers up to 5 integers

       working-storage section.
       01 first-number pic 9(5).
       01 operation    pic A(3).
       01 second-number pic 9(5).
       01 result pic 9(11)V99.
 
       procedure division.
       
       program-begin.
           
           perform get-first-number.
           perform get-operation.
           perform get-second-number.
           perform display-result.

       program-done.
           stop run. 


       get-first-number.
           display "Give your first number: ".
           accept first-number.
       
       get-operation.
           display "Give operation to perform: ".
           accept operation.
       
       get-second-number.
           display "Give your second number: ".
           accept second-number.

       display-result.
           if operation equals "add"
               compute result = first-number + second-number.
               display "Result: ", result.
           
           if operation equals "sub"
               compute result = first-number - second-number.
               display "Result: ", result.

           if operation equals "mul"
               compute result = first-number * second-number.
               display "Result: ", result.

           if operation equals "div"
               compute result = first-number / second-number.
               display "Result: ", result.    

