function [space] = refresh_space(key,space)
for row=1:9
    for col=1:9
        for element = 1:9
            result = isallowed(element,key,row,col);
            %fprintf('row = %d, col=%d, el=%d, allowed=%d',row,col,element,result)
           if(result)
               space(row,col,element) = 1;
           else
               space(row,col,element) = 0;
           end
        end
    end
end
end
