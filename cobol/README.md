# COBOL Setup

## Introduction
This directory contains a COBOL program for the ancient Egyptian trade route optimization challenge.

## Setup

1. **Clone the Repository**:
```
git clone git@github.com:DmitrySadovnikov/code-archaeology.git
```

2. **Navigate to the COBOL Directory**:
```
cd code-archaeology/cobol
```

3. **Build the Docker Image**:
```
docker build -t gnucobol-env .
```

4. **Run the Docker Container**:
```
docker run -it --rm -v $(pwd):/app gnucobol-env
```

5. **Compile and Run the COBOL Program**:
```
cobc -x RouteCalc.cob && ./RouteCalc
```

or

```
cobc -x PyramidResources.cob && ./PyramidResources
```
