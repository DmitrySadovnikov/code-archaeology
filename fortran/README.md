```
Clone a repo with a challenge
git clone git@github.com:christianhujer/expensereport.git
Chose a random language and go to its folder
cd expensereport/expensereport-fortran/
Ask ChatGPT/Perplexity:
please send me instructions on how to set up a FORTRAN environment in Docker and run a file from local with COBOL code
Create a Dockerfile (as from GPT response)
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
gfortran \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["/bin/bash"]
Build
docker build -t fortran-dev .
Run the container:
docker run -it --rm -v $(pwd):/app fortran-dev
Run the code
gfortran -ffree-form ExpenseReport.f -o ExpenseReport && ./ExpenseReport
```