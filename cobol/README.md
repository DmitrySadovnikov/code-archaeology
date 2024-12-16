Clone a repo with a challenge
```
git clone git@github.com:jbrains/trivia.git
```

Chose a random language and go to its folder
```
cd code-archaeology/cobol
```

Ask ChatGPT/Perplexity:
```
please send me instructions on how to set up a COBOL environment in Docker and run a file from local with COBOL code
```

Create a Dockerfile (as from GPT response)
```
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    gnucobol \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["/bin/bash"]
```

Build
```
docker build -t gnucobol-env .
```

Run the container:
```
docker run -it --rm -v $(pwd):/app gnucobol-env
```

Run the code
```
cobc -x game.cob && ./game
```
