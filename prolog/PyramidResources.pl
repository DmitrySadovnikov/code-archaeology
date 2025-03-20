% Define the resource calculation rules
resource_calculation(PyramidSize, LimestoneNeeded, GraniteNeeded, LaborNeeded) :-
    LimestoneNeeded is PyramidSize * 1000,
    GraniteNeeded is PyramidSize * 500,
    LaborNeeded is PyramidSize * 2000.

% Function to read and validate input
read_pyramid_size :-
    repeat,
    write('Enter pyramid size: '), nl,
    read_string(user_input, "\n", "\r\t ", _, InputString),
    atom_string(InputAtom, InputString),
    atom_number(InputAtom, PyramidSize),
    resource_calculation(PyramidSize, LimestoneNeeded, GraniteNeeded, LaborNeeded),
    write('Limestone needed: '), write(LimestoneNeeded), nl,
    write('Granite needed: '), write(GraniteNeeded), nl,
    write('Labor needed: '), write(LaborNeeded), nl,
    !.

% Run the main function
:- read_pyramid_size.
