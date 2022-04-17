N = 1000; %number of data points
L = 3;   %width of wells nm
Vo = 0.7;  %height of well nm

xmin = -15;
xmax = 15;
x = linspace(xmin,xmax,N);
bar = 3.75;

V= zeros(N);

for i = 1:N
    if ((-bar-L<=x(i)) && (x(i)<=-bar))
        V(i)=0;
    elseif ((bar<=x(i)) && (x(i)<=bar+L))
        V(i)=0;
    else
        V(i)=Vo;
    end
end

figure;
plot(x,V,"b"); 
xlabel('x nm')
ylabel('V(x) eV')
title('Double Potential Well')
