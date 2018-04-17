function [nd] = days(mo, da, leap)

% Sarah Verderame
% HOMEWORK 4, Problem 1: This code determines the number of elapsed days in a year. This function will begin counting the number of elasped days starting from January (mo = 1) First (da = 1). We are to assume when a leap year is a reality, we just add one day onto the number of elapsed days to represent the leap year.

% input variables:
% nd = number of days
% mo = month (1-12) (January being 1)
% da = day (1-31) We will assume all months have 31 days.
% leap = 0 for non-leap year and 1 for leap year

leap = menu('Is it a leap year (yes or no)?', 'Yes', 'No') 
%yes==1, no==0 (But the menu function uses yes=1, no=2)

mo = input('What is the number of the month in question?')
if
    mo = 1,3,5,7,8,9,12
    mo = 
    
da = input('What day of the month specified is it?')

if leap == 0 %if it is not a leap year
   if mo>1 %if the month is past January
       nd = (mo-1)*(31) + da;
   else
       nd = da;
   end
else %it is a leap year
   if mo<2 %if the month is past January
       nd = (mo-1)*(31) + da + 1;
   elseif
   else
       nd = da + 1; %add one day for a leap year
   end
end

%display number of days
sent='The number of elasped days is '; 
a = [sent, num2str(nd), ' days.'];
disp(a);


