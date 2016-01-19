clear all

GCC = tf(1,[1 1],'InputDelay',1);

T1 = [0.02 0.05 0.1 0.2 0.3 0.5 0.7 1 1.3 1.5 2 4 6 8 10 20 50 100 200 500 1000];

for i = 1:length(T1);
    G1(i) = tf(1,[T1(i) 1],'InputDelay',1);
    [parametryG1(:,i) normaG1(i)]=identyfikacja(G1(i));
    G1_CC(i)=tf(1,[parametryG1(1,i) 1],'InputDelay',parametryG1(2,i));
end

