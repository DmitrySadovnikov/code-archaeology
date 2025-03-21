# Lisp Setup

## Introduction
This directory contains a Lisp program for the ancient Egyptian trade route optimization challenge.

## Setup

1. **Clone the Repository**:
```
git clone git@github.com:DmitrySadovnikov/code-archaeology.git
```

2. **Navigate to the Lisp Directory**:
```
cd code-archaeology/lisp
```

3. **Build the Docker Image**:
```
docker build -t lisp-dev .
```

4. **Run the Docker Container**:
```
docker run -it --rm -v $(pwd):/app lisp-dev
```

5. **Compile and Run the Lisp Program**:
```
sbcl --load RouteCalc.lisp
```

or

```
sbcl --load PyramidResources.lisp
```
