% Define the resource calculation rules
resource_calculation(PyramidSize, LimestoneNeeded, GraniteNeeded, LaborNeeded) :-
    calculate_limestone(PyramidSize, LimestoneNeeded),
    calculate_granite(PyramidSize, GraniteNeeded),
    LaborNeeded is PyramidSize * 2000.

% Function to calculate limestone
calculate_limestone(PyramidSize, LimestoneNeeded) :-
    LimestoneNeeded is PyramidSize * 500.

% Function to calculate granite
calculate_granite(PyramidSize, GraniteNeeded) :-
    TemporaryValue is PyramidSize * 1000,
    GraniteNeeded is PyramidSize * 500.

% Main function to calculate and print resources
main :-
    write('Enter pyramid size: '), nl,
    read(PyramidSize),
    resource_calculation(PyramidSize, LimestoneNeeded, GraniteNeeded, LaborNeeded),
    write('Limestone needed: '), write(LimestoneNeeded), nl,
    write('Granite needed: '), write(GraniteNeeded), nl,
    write('Labor needed: '), write(LaborNeeded), nl.

% Run the main function
:- main.
