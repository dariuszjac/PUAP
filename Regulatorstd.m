% Badanie pierwszego
GCC = tf(1,[1 1],'InputDelay',1);
regulator=pidstd(2);

uklad= GCC*regulator;
zamkniety=feedback(uklad,1);
[y,t] = step(zamkniety);
simulation_time = 5*ceil(t(end));
sim_step = simulation_time/100000;
%%
% *BOLD TEXT*
%%
% 
%  PREFORMATTED
%  TEXT
% 
