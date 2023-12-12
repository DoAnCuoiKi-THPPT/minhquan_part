function [dx,saiso] =  tichphanhinhthangsimpson1_3(fx,a,b,n,y)
    syms x;
    fx = diff(fx,x,4);
    h = (b-a)/n;
    z1 = y(1) + y(length(y));
    z2 = 0;
    z3 = 0;
    for i = a + 1 : b - 1
        if(mod(i,2) == 0)
            z2 = z2 + y(i);
        else
            z3 = z3 + y(i);
        end
    end
    arr = [ subs(fx,a) subs(fx,b)];
    m = max(arr);
    dx = (h/3)*(z1 + 4*z2 + 2*z3);
    saiso = ((b-a)/180)*m*power(h,4);
    disp(saiso);
end