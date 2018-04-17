%% Homework 3
%% Sarah Verderame
% Problem 1

%{ 
 t is the angle in radians of the inner corner of the cone. h is the height the user will input. VCY is the volume of the cylinder, only using height. The radius was found for the cone using the input height and the tangent of the angle t. The variable n was used to find the height of the tip of the cone to find the volume of the top of the cone. This volume would be subtracted by the full volume of the cone because it is already accounted for in the volume of the cylinder.Finally, VCN is the volume of the cone itself (without the subtracted tip).
%}

t=atan(14/10.5);
h=input('What is the height of the water in meters in the container?')
VCY=pi*12.5*h; 
r=h/(tan(t));
n=12.5*tan(t);
VCN=pi*r*h/3;

%{
Next, the code checks to make sure the input variable is a numeric entry and that it is less than 33 meters (which is the maximum height of the tank). It will display a warning if the variable is not appropriate.
%}

if h>33     
   error('This is not a valid height for the water!')
   
%{
The code will carry on into nested 'if' statements that will find the volume of the cone and subtract the volume of the cone tip if the height reaches above the top of the cylinder. Then it will add both the volumes of the cyclinder and the cone together. If the height is less than 19 meters, the code will just calculate the volume of the cyclinder with the given height.
%}

else
    if h>19
        VCN=VCN-(pi*12.5*(n)/3);
        V=VCY+VCN;
    else
        V=VCY;
    end
end

% The code will display the value as a sentence.

final='The volume of the water in the tank is ';
X=[final, num2str(V),' m^3.'];
disp(X)