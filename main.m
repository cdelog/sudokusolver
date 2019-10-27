close all;
clear;
clc;

% Define starting matrix (value 0 implies empty)
starting_matrix = [...
    0 0 9 2 0 0 7 0 0
    0 0 0 0 0 0 0 6 0
    0 6 5 9 1 3 8 0 2
    6 0 7 0 0 0 0 3 5
    0 2 4 7 3 0 0 1 0
    0 0 0 6 5 0 0 9 0
    0 7 0 0 0 0 0 0 6
    0 5 0 8 6 0 0 0 0
    1 8 0 0 9 0 3 7 0
    ];
 
% Define empty 9x9x9 3D Matrix
matrix_array = zeros(9,9,9);

% Copy the starting matrix to a working matrix
current_matrix = starting_matrix;

% While there are still empty cells, runs algorithm
while(length(find(current_matrix))<81)
    
    % Updates the matrix_array with all allowed values. This fills the 1-9
    % matrices with a 1 in cells where the corresponding value (1-9) is
    % allowed and a 0 where cells aren't allowed.
    matrix_array = refresh_matrix_array(current_matrix, matrix_array);
    
    % Evaluates the matrix_array. If only one of the values 1-9 is allowed
    % in a particular cell, that is the correct value for that cell and it
    % is added to the current_matrix
    current_matrix = current_matrix + getnewvalues(matrix_array)
end
