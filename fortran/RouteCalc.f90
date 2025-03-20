PROGRAM RouteCalc
    IMPLICIT NONE

    INTEGER, PARAMETER :: NumCities = 4
    INTEGER :: DistanceMatrix(NumCities, NumCities)
    INTEGER :: StartCity, EndCity, ShortestDistance
    CHARACTER(LEN=10) :: CityNames(NumCities)
    INTEGER :: i

    ! Initialize city names
    CityNames(1) = "Thebes"
    CityNames(2) = "Memphis"
    CityNames(3) = "Alexandria"
    CityNames(4) = "Asyut"

    ! Initialize distance matrix
    DistanceMatrix(1, 1) = 0
    DistanceMatrix(1, 2) = 200
    DistanceMatrix(1, 3) = 400
    DistanceMatrix(1, 4) = 100
    DistanceMatrix(2, 1) = 200
    DistanceMatrix(2, 2) = 0
    DistanceMatrix(2, 3) = 300
    DistanceMatrix(2, 4) = 250
    DistanceMatrix(3, 1) = 400
    DistanceMatrix(3, 2) = 300
    DistanceMatrix(3, 3) = 0
    DistanceMatrix(3, 4) = 500
    DistanceMatrix(4, 1) = 100
    DistanceMatrix(4, 2) = 250
    DistanceMatrix(4, 3) = 500
    DistanceMatrix(4, 4) = 0

    WRITE(*,*) "Available cities:"
    DO i = 1, NumCities
        WRITE(*,*) i, CityNames(i)
    END DO

    WRITE(*,*) "Enter start city number (1-4): "
    READ(*,*) StartCity
    WRITE(*,*) "Enter end city number (1-4): "
    READ(*,*) EndCity

    ShortestDistance = DistanceMatrix(StartCity, EndCity)

    WRITE(*,*) "Shortest distance from ", CityNames(StartCity), " to ", CityNames(EndCity), ": ", ShortestDistance

END PROGRAM RouteCalc
