%% Circuit 1
I = [0; 2.23; 2.20; 1.86; 1.55; .24; .14; .10; .08]

I = I./1000

V = [4.12; 0.131; 0.198; 0.806; 1.33; 3.67; 3.84; 3.94; 3.96]

scatter(I,V,'filled')
title('Circuit 1')
xlabel('Load (Amps)')
ylabel('Volts')
hold on

%% Circuit 2
A = [0; 0.00196; 0.00193; 0.00166; 0.00142; 0.00023; 0.00014; 0.00009; 0.00008]
B = [4.12; 0.138; 0.211; 0.718; 1.2; 3.6; 3.8; 3.9; 3.94]
scatter(A,B,'filled','red')
title('Circuit 2')
xlabel('Load (Amps)')
ylabel('Volts')
legend('Circuit 1', 'Circuit 2')
hold off


%% Circuirt 3
