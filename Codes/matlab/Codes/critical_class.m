function yout = critical_class(lambda)


%  Extracting the real and imaginary parts of the eigen values
R1 = real(lambda(1));
I1 = imag(lambda(1));

R2 = real(lambda(2));
I2 = imag(lambda(2));


% Binary variables associated with each critical point type
att_focus = R1 < 0 & R2 < 0 & I1 ~= 0 & I2 ~= 0;
rep_focus = R1 > 0 & R2 > 0 & I1 ~= 0 & I2 ~= 0;

saddle = R1.*R2 < 0 & I1 == 0 & I2 == 0;
center = R1 == 0 & R2 == 0 & I1 ~= 0 & I2 ~= 0;

att_node = R1 < 0 & R2 < 0 & I1 == 0 & I2 == 0;
rep_node = R1 > 0 & R2 > 0 & I1 == 0 & I2 == 0;


% Converting the binary variables to an output variable value
if(att_focus)
    yout = 1;
end


if(rep_focus)
    yout = 2;
end


if(saddle)
    yout = 3;
end


if(center)
    yout = 4;
end


if(att_node)
    yout = 5;
end


if(rep_node)
    yout = 6;
end



