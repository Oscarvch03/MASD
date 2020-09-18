function dv_t1 = ODExcil(t, v)
    g = 9.8;
    a = pi * (0.02 ^ 2);
    r = 1/sqrt(3);
    dv_t1 = (-a * sqrt(2 * g) * sqrt(v)) / (sqrt(pi) * r);
end