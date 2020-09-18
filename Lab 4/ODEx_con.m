function HT = ODEx_con(t,h)
    g = 9.8;
    H = 2; 
    R = 1;
    a = pi * (0.02 ^ 2);
    HT = (-a * (H ^ 2) * sqrt(2 * g * h)) / (pi * (R ^ 2) * (h ^ 2));
end