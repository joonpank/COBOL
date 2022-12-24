       identification division.
       program-id. bmicalculator.
      
      *This program reads user input for weight and height
      *to calculate body mass index (BMI)
       environment division.
       
       data division.
       working-storage section.
       01  weight pic 9(3).
       01  height pic 9V99.
       01  bmi pic 9(3)V99.
 
       procedure division.
       PROGRAM-BEGIN.
           display "Enter your height in meters: ".
           accept height.
           
           display "Enter your weight in kilograms: ".
           accept weight.
           
           compute bmi = weight / (height * height).
           display "Your BMI is: ", bmi.
       
       stop run.
       end program bmicalculator.