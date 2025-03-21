# Haskell Setup

## Introduction
This directory contains Haskell programs for the ancient Egyptian trade route optimization and pyramid resource calculation challenges.

## Setup

1. **Clone the Repository**:
```
git clone git@github.com:DmitrySadovnikov/code-archaeology.git
```

2. **Navigate to the Haskell Directory**:
```
cd code-archaeology/haskell
```

3. **Build the Docker Image**:
```
docker build -t haskell-dev .
```

4. **Run the Docker Container**:
```
docker run -it --rm -v $(pwd):/app haskell-dev
```

5. **Run the Haskell Programs**:
   - **Trade Route Optimization**: Inside the container, run `ghc RouteCalc.hs -o RouteCalc && ./RouteCalc`
   - **Pyramid Resource Calculation**: Inside the container, run `ghc PyramidResources.hs -o PyramidResources && ./PyramidResources`
