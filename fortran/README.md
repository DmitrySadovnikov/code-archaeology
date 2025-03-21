# Fortran Setup

## Introduction
This directory contains a Fortran program for the ancient Egyptian trade route optimization challenge.

## Setup

1. **Clone the Repository**:
```
git clone git@github.com:DmitrySadovnikov/code-archaeology.git
```

2. **Navigate to the Fortran Directory**:
```
cd code-archaeology/fortran
```

3. **Build the Docker Image**:
```
docker build -t fortran-dev .
```

4. **Run the Docker Container**:
```
docker run -it --rm -v $(pwd):/app fortran-dev
```

5. **Compile and Run the Fortran Program**:
```
gfortran -ffree-form RouteCalc.f90 -o RouteCalc && ./RouteCalc
```

or

```
gfortran -ffree-form PyramidResources.f90 -o PyramidResources && ./PyramidResources
```
