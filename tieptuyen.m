function tieptuyen(app,fx,n,w)
    a = app.a_nghiem.Value;
    b = app.b_nghiem.Value;
    syms x;
    x0 = a;
    fxdh1 = diff(fx,x);
    fxdh2 = diff(fx,x,2);
    saiso = app.saiso_nghiem.Value;
    dkht = abs((fx(x0)*subs(fxdh2,x,x0))/power(subs(fxdh1,x,x0),.2));
    disp(dkht);
    if(dkht < 1)
    while(1)
        xi = double(x0 - fx(x0)/subs(fxdh1,x,x0));
        if(abs(xi - x0) < saiso)
            break;
        end
         x0 = xi;
        n = n + 1;
    end
         app.ketqua_nghiem.Value = num2str(x0);
         app.solanlap_nghiem.Value = num2str(n);
     for i = 1 : length(w)
         z = fx(w);
     end
     j = 0 .* w;
    plot(app.bieudo_nghiem,w,z,'red',w,j,'blue');
    else
        disp("Vi pham dieu kien hoi tu");
    end
    
end