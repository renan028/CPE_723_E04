function r = mapbi2func(x, xdemin, xdemax, xbimax)
xde = bi2dec(x);
r = (xdemax - xdemin) * xde / xbimax + xdemin;
    