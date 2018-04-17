%% How to use Lu Decomposition

%define a
%[l, u]=lu(a)
%define b
%d = l\b
%x = u\d

%% practice
a = [-2 1 1;
    4 -6 6;
    -6 -3 -10]
[l,u]=lu(a)
b = [2; -2; 9]
d = l\b
x = u\b