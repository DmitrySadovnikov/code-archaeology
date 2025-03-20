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

## Task
- **Understand the Code**: Review the `RouteCalc.lisp` program and understand how it calculates the shortest distance between cities.
- **Identify Ahmose's Mistake**: Look for any logical errors or inefficiencies in the code.
- **Refactor the Code**: Improve the code's readability and maintainability. Consider adding comments or simplifying the logic.
- **Write Tests**: Create unit tests to ensure the program works correctly for different inputs.
