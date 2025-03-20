       IDENTIFICATION DIVISION.
       PROGRAM-ID. RouteCalc.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  DistanceMatrix.
          05  Thebes-Memphis PIC 9(3).
          05  Thebes-Alexandria PIC 9(3).
          05  Thebes-Asyut PIC 9(3).
          05  Memphis-Thebes PIC 9(3).
          05  Memphis-Alexandria PIC 9(3).
          05  Memphis-Asyut PIC 9(3).
          05  Alexandria-Thebes PIC 9(3).
          05  Alexandria-Memphis PIC 9(3).
          05  Alexandria-Asyut PIC 9(3).
          05  Asyut-Thebes PIC 9(3).
          05  Asyut-Memphis PIC 9(3).
          05  Asyut-Alexandria PIC 9(3).

       01  StartCity PIC X(10).
       01  EndCity PIC X(10).
       01  ShortestDistance PIC 9(5).

       PROCEDURE DIVISION.
       MAIN-PROGRAM.
           MOVE 200 TO Thebes-Memphis.
           MOVE 400 TO Thebes-Alexandria.
           MOVE 100 TO Thebes-Asyut.
           MOVE 200 TO Memphis-Thebes.
           MOVE 300 TO Memphis-Alexandria.
           MOVE 250 TO Memphis-Asyut.
           MOVE 400 TO Alexandria-Thebes.
           MOVE 300 TO Alexandria-Memphis.
           MOVE 500 TO Alexandria-Asyut.
           MOVE 100 TO Asyut-Thebes.
           MOVE 250 TO Asyut-Memphis.
           MOVE 500 TO Asyut-Alexandria.

           DISPLAY "Enter start city (e.g., Thebes, Memphis): "
           ACCEPT StartCity
           DISPLAY "Enter end city (e.g., Alexandria, Asyut): "
           ACCEPT EndCity

           IF StartCity = "Thebes" AND EndCity = "Memphis"
               MOVE Thebes-Memphis TO ShortestDistance
           ELSE IF StartCity = "Thebes" AND EndCity = "Alexandria"
               MOVE Thebes-Alexandria TO ShortestDistance
           ELSE IF StartCity = "Thebes" AND EndCity = "Asyut"
               MOVE Thebes-Asyut TO ShortestDistance
           ELSE IF StartCity = "Memphis" AND EndCity = "Thebes"
               MOVE Memphis-Thebes TO ShortestDistance
           ELSE IF StartCity = "Memphis" AND EndCity = "Alexandria"
               MOVE Memphis-Alexandria TO ShortestDistance
           ELSE IF StartCity = "Memphis" AND EndCity = "Asyut"
               MOVE Memphis-Asyut TO ShortestDistance
           ELSE IF StartCity = "Alexandria" AND EndCity = "Thebes"
               MOVE Alexandria-Thebes TO ShortestDistance
           ELSE IF StartCity = "Alexandria" AND EndCity = "Memphis"
               MOVE Alexandria-Memphis TO ShortestDistance
           ELSE IF StartCity = "Alexandria" AND EndCity = "Asyut"
               MOVE Alexandria-Asyut TO ShortestDistance
           ELSE IF StartCity = "Asyut" AND EndCity = "Thebes"
               MOVE Asyut-Thebes TO ShortestDistance
           ELSE IF StartCity = "Asyut" AND EndCity = "Memphis"
               MOVE Asyut-Memphis TO ShortestDistance
           ELSE IF StartCity = "Asyut" AND EndCity = "Alexandria"
               MOVE Asyut-Alexandria TO ShortestDistance
           END-IF

           DISPLAY "Shortest distance: ", ShortestDistance

           STOP RUN.
