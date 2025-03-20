% Define the distance matrix
distance(thebes, memphis, 200).
distance(thebes, alexandria, 400).
distance(thebes, asyut, 100).
distance(memphis, thebes, 200).
distance(memphis, alexandria, 300).
distance(memphis, asyut, 250).
distance(alexandria, thebes, 400).
distance(alexandria, memphis, 300).
distance(alexandria, asyut, 500).
distance(asyut, thebes, 100).
distance(asyut, memphis, 250).
distance(asyut, alexandria, 500).

% Function to get the distance between two cities
get_distance(City1, City2, Distance) :-
    distance(City1, City2, Distance).

% Function to print available cities
print_cities :-
    write('Available cities:'), nl,
    write('1. Thebes'), nl,
    write('2. Memphis'), nl,
    write('3. Alexandria'), nl,
    write('4. Asyut'), nl.

% Function to get city name from number
get_city_name(1, thebes).
get_city_name(2, memphis).
get_city_name(3, alexandria).
get_city_name(4, asyut).

% Main function to calculate and print the shortest distance
main :-
    print_cities,
    write('Enter start city number (1-4): '), nl,
    read(StartCity),
    write('Enter end city number (1-4): '), nl,
    read(EndCity),
    get_city_name(StartCity, StartCityName),
    get_city_name(EndCity, EndCityName),
    get_distance(StartCityName, EndCityName, Distance),
    write('Shortest distance from '), write(StartCityName), write(' to '), write(EndCityName), write(': '), write(Distance), nl.

% Run the main function
:- main.
