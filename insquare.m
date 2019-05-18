function [result] = insquare(value, key, this_row, this_col)
result = false;

if(this_row<4)
    start_row = 1;
elseif (this_row<7)
    start_row = 4;
else
    start_row = 7;
end

if(this_col<4)
    start_col = 1;
elseif (this_col<7)
    start_col= 4;
else
    start_col = 7;
end
    
end_row = start_row+2;
end_col = start_col+2;
    for row = start_row:end_row
        for col = start_col:end_col
            if(value==key(row,col))
                result = true;
            end
        end
   end
end