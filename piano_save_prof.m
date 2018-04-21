clear all;
L = 1; J = 81 ; 
dx = L/(J-1);
r= 4;
M=1, f= 440; 
T=M*(2*L*f)^2;
nskip = ceil(f*2*(J-1)/8192);
tmax = 7 %second
count = 0
%dt = 1/(8192*nskip);

dt = 0.1*dx
clockmax = ceil(tmax/dt);
countmax = ceil(clockmax/nskip);
H=zeros(1,J);
xp=0.25*L;
for j =1:J
    x = (j-1)*dx;
    if(x<xp)
        H(j) = x/xp;
    else
        H(j) = (L-x)/(L-xp);
    end
end

U =zeros(1,J);
xsave = 0:dx:L;
S=zeros(1,countmax);
tsave = zeros(1,countmax);
jj=54; %interior points
for clock = 1:clockmax
    U(jj) = U(jj) + (dt/(dx^2))*(T/M)*(H(jj+1)-2*H(jj)+H(jj-1))+(r*dt/M)*(U(jj+1)-2*U(jj)+U(jj+1));
    H(jj) = (H(jj) + dt*U(jj))
    
    if(mod(clock,nskip))==0
        count= count+1
        S(count) = H(2)
    end
end

soundsc(S)