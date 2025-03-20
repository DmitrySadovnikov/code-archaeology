PROGRAM PyramidResources
    IMPLICIT NONE

    INTEGER :: PyramidSize
    INTEGER :: LimestoneNeeded, GraniteNeeded, LaborNeeded
    INTEGER :: TemporaryValue

    PyramidSize = 100

    CALL calculate_limestone(PyramidSize, LimestoneNeeded)
    CALL calculate_granite(PyramidSize, GraniteNeeded)

    LaborNeeded = PyramidSize * 2000

    WRITE(*,*) "Limestone needed: ", LimestoneNeeded
    WRITE(*,*) "Granite needed: ", GraniteNeeded
    WRITE(*,*) "Labor needed: ", LaborNeeded

CONTAINS

    SUBROUTINE calculate_limestone(PyramidSize, LimestoneNeeded)
        INTEGER, INTENT(IN) :: PyramidSize
        INTEGER, INTENT(OUT) :: LimestoneNeeded
        INTEGER :: AdditionalParameter

        LimestoneNeeded = PyramidSize * 1000
        TemporaryValue = 0
    END SUBROUTINE calculate_limestone

    SUBROUTINE calculate_granite(PyramidSize, GraniteNeeded)
        INTEGER, INTENT(IN) :: PyramidSize
        INTEGER, INTENT(OUT) :: GraniteNeeded

        GraniteNeeded = PyramidSize * 500
    END SUBROUTINE calculate_granite

END PROGRAM PyramidResources
