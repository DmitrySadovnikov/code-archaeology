PROGRAM PyramidResources
    IMPLICIT NONE

    INTEGER :: PyramidSize
    INTEGER :: LimestoneNeeded, GraniteNeeded, LaborNeeded

    PyramidSize = 100

    LimestoneNeeded = PyramidSize * 1000
    GraniteNeeded = PyramidSize * 500
    LaborNeeded = PyramidSize * 2000

    WRITE(*,*) "Limestone needed: ", LimestoneNeeded
    WRITE(*,*) "Granite needed: ", GraniteNeeded
    WRITE(*,*) "Labor needed: ", LaborNeeded

END PROGRAM PyramidResources
