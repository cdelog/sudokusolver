function [result] = isallowed(value, key, this_row, this_col)
if(~inrow(value,key,this_row)&~incol(value,key,this_col)&~insquare(value,key,this_row,this_col)&key(this_row,this_col)==0)
    result = true;
else
    result = false;
end

end
