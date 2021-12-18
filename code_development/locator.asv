function loc = locator(x,loc)
get = [17 ,16 ,16 ,17]';
dif = [1, 1, 1, 1]';
for i = 1:4
    if loc(i) == 0 && x(i) <= get(i)
        for j = 1:4

            if i~=j && loc(j) == 1 && x(j)-x(i) >= dif(i)
                loc(i) = 1;
                loc(j) = 0;
                break
            end
            
        end
    end
end
