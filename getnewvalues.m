function [new] = getnewvalues(space)
new = zeros(9);
for row=1:9
    for col=1:9
        new(row,col) = issinglevalue(space,row,col);
    end
end

end