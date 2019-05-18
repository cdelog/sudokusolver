function [result] = incol(value, key, this_col)
result = false;
    for row = 1:9
        if(value==key(row,this_col))
            result = true;
        end
    end
end