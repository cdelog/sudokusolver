function [result] = inrow(value, key, this_row)
result = false;
    for col = 1:9
        if(value==key(this_row,col))
            result = true;
        end
    end
end