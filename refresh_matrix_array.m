function [space] = refresh_matrix_array(key,space)
%refresh_space - Refreshes the space
%
% Inputs:
%    key - The starting matrix
%    space - The filled matrix
%
% Outputs:
%    space - The populated space
%
%
% Author: Christopher Deloglos
% email: cd.dman@gmail.com
% July 2018; Last revision: 26-October-2019
%------------- BEGIN CODE --------------

% Iterates through the matrix rows
for row=1:9
    % Iterates through the matrix columns
    for col=1:9
        % Iterates through the numbers 1-9
        for test_cell_value = 1:9
            
            % Tests if the number is allowed to go in the cell
            result = isallowed(test_cell_value,key,row,col);
            
            
            if(result)
                space(row,col,test_cell_value) = 1;
            else
                space(row,col,test_cell_value) = 0;
            end
        end
    end
end
end
