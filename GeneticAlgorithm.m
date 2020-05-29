%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nicholas Heredia, code begat 11/06/2019
% Genetic Algorithm, Comuptational Intelligence
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trials=200; generation = 200; parents=20; popln=40; precsn=8;
[x,y]=meshgrid(-5:0.05:5);

objf=exp(-((x-3).^2+(y-3).^2)./5) + 0.8.*exp(-(x.^2+(y+3).^2)./5)+0.2*(cos(x*pi/2)+cos(y*pi/2))+0.5;

%figure
%mesh(x,y,objf);

parGroup=uint8(randi([0 2^8],1,parents));

binx=rand(popln,precsn)>0.5;

%createChild function