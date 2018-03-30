clear
tic
L = 1;
J = 41; 
M = 1;
f_low = 110;
scale24 = f_low * 2 .^((12:35)/12); % frequency
map=[1 3 5 6 8 10 12 ... % low pitch
    13 15 17 18 20 22 24]; % high pitch
nstrings = length(map); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = zeros(nstrings,1);
f(:)=scale24(map(:));
T = ones(nstrings,J);
for i = 2:J-1
    T(:,i) = M * (2 * L * f(:)).^2;
end
fmax = f(nstrings);
vnote = 2*pi/L*sqrt(T(nstrings,2)/M);
H = zeros(nstrings,J);
V = zeros(nstrings,J);

dnote = 0.25*[2 2 4 2 2 4 2 2 3 1 8 repelem(2,12) 4 4 ...
        2 2 2 2 6 1 1 2 2 2 2 6 2 2 2 2 2 6 2 ...
        2 2 2 2 4 2 2 2 2 2 2 6 2 2 2 2 2 6 2 ...
        repelem(2,12) 6 ...
        4 2 4 2 2 4 2 2 2 1 8 2 2 3 1 2 2 2 1 1 ...
        2 2 2 2 2 6 ...
        2 2 4 2 2 4 2 2 2 1 8 2 2 3 1 2 2 2 1 1 ...
        2 2 2 2 2 6 ...
        2 2 4 2 2 4 2 2 2 1 8 2 2 3 1 2 2 2 1 1 ...
        2 2 2 2 6];
nnmax = length(dnote);  
tp = 0;
tnote = zeros(nnmax);
for i = 2:nnmax
    tp = tp + dnote(i-1);
    tnote(i) = 0.5*tp; %0.5 represent the length of a note
end
tmax = 0.5*(tp + dnote(nnmax));

istring=7+[repelem(3,7) 5 1 2 3 4 4 4 4 4 3 3 3 5 5 4 2 1 7 ...
    -2 3 2 1 -2 -2 -2 -2 3 2 1 -1 -1 -1 4 3 2 0 -2 ...
    5 5 4 2 3 1 -2 -2 3 2 1 -2 -2 -2 3 2 1 -1 -1 ...
    -2 4 3 2 5 5 5 5 6 5 4 2 1 ...
    3 3 3 3 3 3 3 5 1 2 3 4 4 4 4 4 3 3 3 3  ...
    3 2 2 1 2 5 ...
    3 3 3 3 3 3 3 5 1 2 3 4 4 4 4 4 3 3 3 3  ...
    3 2 2 1 2 5 ...
    3 3 3 3 3 3 3 5 1 2 3 4 4 4 4 4 3 3 3 3  ...
    5 5 4 2 1]; % The number is the index of Map[]

j = 2 : (J-1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dx = L / (J-1);
xh1 = L / 4;
xh2 = 3 * L / 4;
j1 = 1 + ceil(xh1/dx);
j2 = 1 + floor(xh2/dx);
jstrike = j1 : j2;

nn = 1;
nskip = ceil(fmax * 2 * (J-1)/8192);
dt = 1/(8192 * nskip);

clockmax = ceil(tmax/dt);

ncount = ceil(clockmax/nskip);
t1 = zeros(ncount,1);
S = zeros(ncount,1);
count = 0;
i = 1 : nstrings;
for clock = 1 : clockmax
    t = clock * dt;
    while(nn <= nnmax) && (tnote(nn) < t)
        V(istring(nn),jstrike) =  V(istring(nn),jstrike) + vnote;
        nn = nn + 1;
    end

    V(i,j) = V(i,j) + dt/(dx).^2 .* T(i,j)/M .* (H(i,j+1) - 2 .* H(i,j) + H(i,j-1))... 
         + (dt/(dx).^2) .* 0.8/M .* (V(i,j+1) - 2 .* V(i,j) + V(i,j-1));
    H(i,j) = H(i,j) + dt * V(i,j);    
%          
    if (mod(clock,nskip) == 0)
         count = count + 1;
         t1(count) = t;
         S(count) = sum(H(:,j2));
    end
end
toc
plot(t1,S)
sound(S);