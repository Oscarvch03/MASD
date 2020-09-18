function W = b_and_w(Z)
    [x, y] = size(Z);
    W = zeros(x, y);
    for i = 1:x
        for j = 1:y
            if(Z(i, j) > 200)
                W(i, j) = 1;
            end
        end
    end
end