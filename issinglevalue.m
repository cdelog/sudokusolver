function [result] = issinglevalue(space,this_row,this_col)

if(sum(space(this_row,this_col,:))==1)
    result = sum(squeeze(space(this_row,this_col,:)).*(1:9)')
else
    result = 0;
end

end