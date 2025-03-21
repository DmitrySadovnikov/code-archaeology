# Prolog Setup

## Introduction
This directory contains a Prolog program for the ancient Egyptian trade route optimization challenge.

## Setup

1. **Clone the Repository**:
```
git clone git@github.com:DmitrySadovnikov/code-archaeology.git
```

2. **Navigate to the Prolog Directory**:
```
cd code-archaeology/prolog
```

3. **Build the Docker Image**:
```
docker build -t prolog-dev .
```

4. **Run the Docker Container**:
```
docker run -it --rm -v $(pwd):/app prolog-dev
```

5. **Run the Prolog Program**:
```
swipl -f RouteCalc.pl
```

or

```
swipl -f PyramidResources.pl
```
