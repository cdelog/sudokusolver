new = zeros(9);
space = zeros(9,9,9);
key = [...
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



while(length(find(key))<81)
    space = refresh_space(key,space);
    new = getnewvalues(space)
    key = key + new
end
