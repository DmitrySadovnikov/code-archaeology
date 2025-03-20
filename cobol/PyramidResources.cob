       IDENTIFICATION DIVISION.
       PROGRAM-ID. PyramidResources.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  LimestoneNeeded PIC 9(5).
       01  GraniteNeeded PIC 9(5).
       01  LaborNeeded PIC 9(5).
       01  PyramidSize PIC 9(3).

       PROCEDURE DIVISION.
       MAIN-PROGRAM.
           MOVE 100 TO PyramidSize

           COMPUTE LimestoneNeeded = PyramidSize * 1000
           COMPUTE GraniteNeeded = PyramidSize * 500
           COMPUTE LaborNeeded = PyramidSize * 2000

           DISPLAY "Limestone needed: ", LimestoneNeeded
           DISPLAY "Granite needed: ", GraniteNeeded
           DISPLAY "Labor needed: ", LaborNeeded

           STOP RUN.
