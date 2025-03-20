       IDENTIFICATION DIVISION.
       PROGRAM-ID. PyramidResources.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  LimestoneNeeded PIC 9(5).
       01  GraniteNeeded PIC 9(5).
       01  LaborNeeded PIC 9(5).
       01  PyramidSize PIC 9(3).
       01  TemporaryValue PIC 9(3).

       PROCEDURE DIVISION.
       MAIN-PROGRAM.
           MOVE 100 TO PyramidSize

           PERFORM CalculateLimestone
           PERFORM CalculateGranite

           COMPUTE LaborNeeded = PyramidSize * 2000

           DISPLAY "Limestone needed: ", LimestoneNeeded
           DISPLAY "Granite needed: ", GraniteNeeded
           DISPLAY "Labor needed: ", LaborNeeded

           STOP RUN.

       CalculateLimestone.
           COMPUTE LimestoneNeeded = PyramidSize * 1000
           MOVE 0 TO TemporaryValue
           EXIT.

       CalculateGranite.
           COMPUTE GraniteNeeded = PyramidSize * 500
           EXIT.

       END PROGRAM PyramidResources.
