function lap(app,gx,n,w)
    a = app.a_nghiem.Value;
    b = app.b_nghiem.Value;
    syms x;
    g1 = diff(gx,x);
    x1 = abs(subs(g1,x,a));
    x2 = abs(subs(g1,x,b));
    mang = [x1 x2];
    saiso = app.saiso_nghiem.Value;
    q = max(mang,[],'all');
    if(q < 1)
        x0 = (a+b)/2;
        while(1)
            xi = gx(x0);
            if((q*abs(xi - x0))/(1 - q) < saiso)
                break;
            end
            x0 = xi;
            n = n + 1;
        end
         for i = 1 : length(w)
             z = gx(w);
         end
         j = 0 .* w;
        plot(app.bieudo_nghiem,w,z,'red',w,j,'blue');
        app.ketqua_nghiem.Value = num2str(x0);
        app.solanlap_nghiem.Value = num2str(n);
    end
end