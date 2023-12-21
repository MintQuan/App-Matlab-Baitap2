function result = LagrangeInterpolation(x_data, y_data)
sym x;
    n = length(x_data);
    result = 0;
    for i = 1:n
        Li = 1;
        for j = 1:n
            if j ~= i
                Li = Li * (x - x_data(j)) / (x_data(i) - x_data(j));
            end
        end
    result = result + Li * y_data(i);
    end
end