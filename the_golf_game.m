clear
%removes all variables from the current workspace

clc
%clears all input and output from the Command Window display

clf
%deletes from the current figure all graphics objects
choice1=questdlg('choose a club','Clubs','Driver','Iron','Wedge','Wedge')
switch choice1
    case 'Driver'
        choice=questdlg('In what level?','Levels','easy','medium','hard','hard');


%EASY

switch choice
    case 'easy'  
hole=200
%defines the hole in a random position from 100 to 200

I1=0;    
while (abs(hole-I1)>5.0)
%evaluates the condition and execute the body when the condition holds true.  

v=input('what is the velocity?(m/s)')

%request user to input the value of the velocity in m/s

theta=input('what is the angle?(radians)')

%request user to input the angle in  radians


clf
plot([0,v*cos(theta)],[0,v*sin(theta)],'r')
%plots the direction of the initial velocity

hold on
%retains the current graph and adds another graph to it

whitebg('c')
%defines the background color

rectangle('position',[-100,-10,600,10], 'facecolor', 'g')%draw the garden
rectangle('position',[hole-5,-3,10,3], 'facecolor', 'k')%draw the hole



C1=[100,103,107,110,115,120,140,145,150,153,157,160];
C2=[170,175,175,180,180,185,185,180,180,175,175,170];
fill(C1,C2, 'w')
hold on
C3=[160,163,167,170,175,180,200,205,210,213,217,220];
C4=[150,155,155,160,160,165,165,160,160,155,155,150];
fill(C3,C4, 'w')
hold on
C5=[40,43,47,50,55,60,80,85,90,93,97,100];
C6=[140,145,145,150,150,155,155,150,150,145,145,140];
fill(C5,C6, 'w')
%draw the clouds

b1=[275,280,285];
b2=[145,142,145];
plot(b1,b2,'k')
B1=[290,295,300];
B2=[142,139,142];
plot(B1,B2,'k')
%draw the birds

q1=[hole,hole];
q2=[0,15];
plot(q1,q2,'k')
hold on
F1=[hole,hole,hole-5];
F2=[15,20,15];
fill(F1,F2, 'r')
%draw the flag

r=20;
k=0:pi/100:2*pi;
xc=r*cos(k);
yc=r*sin(k);
fill(xc+280,yc+210, 'y')
%draw the sun

xmin=-50;
xmax=350;
ymin=-10;
ymax=250;
axis([xmin xmax ymin ymax])
title('GOLF GAME','fontsize',16)
xlabel('distance traveled by the ball','fontsize',12)
ylabel('height reached by the ball','fontsize', 12)
%defines the parameter of the axis, adds title and label 

T1=(v*sin(theta))/4.9;
%the final t

for i=1:20
t1=T1*(i/20);
x1(i)=v*cos(theta)*t1;
y1(i)=v*sin(theta)*t1-(9.81/2)*t1.^2;
%equations for the projectile

plot(x1,y1,'wo')
%plots the projectile
pause(0.09)
%pause 0.09 seconds for each of the plot
hold on

end

I1=v*cos(theta)*T1;%the first impact of the ball
disp('the first impact of the ball is when x equals to:')
disp(I1)
%displays the first impact of the ball


if(abs(hole-I1)<5.0)%the use of if statment to see if the ball goes in the hole
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')%displays a box with a text if the ball goes in the hole
    break %break the program if the ball goes in the hole
end



T2=((v/2)*sin(theta))/4.9;
for i=1:6
    t2=T2*(i/6);
    x2(i)=((v/2)*cos(theta)*t2)+I1;
    y2(i)=(v/2)*sin(theta)*t2-(9.81/2)*t2.^2;
    plot(x2,y2,'wo')
    pause(0.09)
    hold on
end

I2=((v/2)*cos(theta)*T2)+I1;
disp('the second impact of the ball is when x equals to:')
disp(I2)
if(abs(hole-I2)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end


T3=((v/4)*sin(theta))/4.9;

for i=1:4
    t3=T3*(i/4);
    x3(i)=((v/4)*cos(theta)*t3)+I2;
    y3(i)=(v/4)*sin(theta)*t3-(9.81/2)*t3.^2;
      
    plot(x3,y3,'wo')
    pause(0.09)
    hold on
end
 I3=((v/4)*cos(theta)*T3)+I2;
 disp('the third impact of the ball is when x equals to:')
disp(I3)

if(abs(hole-I3)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
   else
    disp('try again')
end
end






%MEDIUM

    case 'medium'
   
        
hole=rand(1)*200+100
%defines the hole in a random position from 100 to 200

I1=0;
while (abs(hole-I1)>5.0)
%evaluates the condition and execute the body when the condition holds true.  

v=input('what is the velocity?(m/s)')

%request user to input the value of the velocity in m/s

theta=input('what is the angle?(radians)')

%request user to input the angle in  radians


cd=0.1; %drag coefficient
m=0.04593; %mass of the ball
d=0.04267; %diameter of the ball
p=1.2922; %density of the air
A=pi*0.25*d^2; %area of the ball
fd=0.5*cd*p*(v*cos(theta))^2*A %drag force
a=fd/m; %negative acceleration caused by the drag force




plot([0,v*cos(theta)],[0,v*sin(theta)],'r')
%plots the direction of the initial velocity

hold on

whitebg('c')
rectangle('position',[-100,-10,600,10], 'facecolor', 'g')
rectangle('position',[hole-5,-3,10,3], 'facecolor', 'k')
rectangle('position',[50,-6,50,6],'curvature', [0.8,0.6], 'facecolor', 'b')%draw the lake



C1=[100,103,107,110,115,120,140,145,150,153,157,160];
C2=[170,175,175,180,180,185,185,180,180,175,175,170];
fill(C1,C2, 'w')
hold on

C3=[160,163,167,170,175,180,200,205,210,213,217,220];
C4=[150,155,155,160,160,165,165,160,160,155,155,150];
fill(C3,C4, 'w')
hold on

C5=[40,43,47,50,55,60,80,85,90,93,97,100];
C6=[140,145,145,150,150,155,155,150,150,145,145,140];
fill(C5,C6, 'w')

b1=[275,280,285];
b2=[145,142,145];
plot(b1,b2,'k')

B1=[290,295,300];
B2=[142,139,142];
plot(B1,B2,'k')

q1=[hole,hole];
q2=[0,15];
plot(q1,q2,'k')
hold on

F1=[hole,hole,hole-5];
F2=[15,20,15];
fill(F1,F2, 'r')

r=20;
k=0:pi/100:2*pi;
xc=r*cos(k);
yc=r*sin(k);


fill(xc+280,yc+210, 'y')


xmin=-50;
xmax=350;
ymin=-10;
ymax=250;
axis([xmin xmax ymin ymax])
title('GOLF GAME','fontsize',16)
xlabel('distance traveled by the ball','fontsize',12)
ylabel('height reached by the ball','fontsize', 12)


T1=(v*sin(theta))/4.9;
%the final t

for i=1:20
t1=T1*(i/20);
x1(i)=(v*cos(theta)*t1-0.5*a*t1.^2);
y1(i)=v*sin(theta)*t1-(9.81/2)*t1.^2;
%equations for the projectile with the effect of the drag force

plot(x1,y1,'wo')
pause(0.09)
hold on

end

I1=v*cos(theta)*T1-0.5*a*T1^2;
disp('the first impact of the ball is when x equals to:')
disp(I1)


if(abs(hole-I1)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end


if (I1>50) && (I1<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    


T2=((v/2)*sin(theta))/4.9;
for i=1:6
    t2=T2*(i/6);
    x2(i)=((v/2)*cos(theta)*t2-0.5*a*t2.^2)+I1;
    y2(i)=(v/2)*sin(theta)*t2-(9.81/2)*t2.^2;
    plot(x2,y2,'wo')
    pause(0.09)
    hold on
end

I2=((v/2)*cos(theta)*T2-0.5*a*T2^2)+I1;
disp('the second impact of the ball is when x equals to:')
disp(I2)
if(abs(hole-I2)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end

if (I2>50) && (I2<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    


T3=((v/4)*sin(theta))/4.9;

for i=1:4
    t3=T3*(i/4);
    x3(i)=((v/4)*cos(theta)*t3-0.5*a*t3.^2)+I2;
    y3(i)=(v/4)*sin(theta)*t3-(9.81/2)*t3.^2;
      
    plot(x3,y3,'wo')
    pause(0.09)
    hold on
end
 I3=((v/4)*cos(theta)*T3-0.5*a*T3^2)+I2;
 disp('the third impact of the ball is when x equals to:')
disp(I3)

if(abs(hole-I3)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
   else
    disp('try again')
    
    if (I3>50) && (I3<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    
end
end

   





%HARD


    case 'hard'
        
hole=rand(1)*200+100
%defines the hole in a random position from 100 to 200

I1=0;
while (abs(hole-I1)>5.0)
%evaluates the condition and execute the body when the condition holds true.  

v=input('what is the velocity?(m/s)')

%request user to input the value of the velocity in m/s

theta=input('what is the angle?(radians)')

%request user to input the angle in  radians

vw=rand(1)*(-2) %velocity of the wind
cd=0.08; %drag coefficient
m=0.04593; %mass of the ball
d=0.04267; %diameter of the ball
p=1.2922; %density of the air
A=pi*0.25*d^2; %area of the ball
fd=0.5*cd*p*(v*cos(theta))^2*A %drag force
a=fd/m; %negative acceleration caused by the drag force




plot([0,v*cos(theta)],[0,v*sin(theta)],'r')
%plots the direction of the initial velocity

hold on

whitebg('c')
rectangle('position',[-100,-10,600,10], 'facecolor', 'g')
rectangle('position',[hole-5,-3,10,3], 'facecolor', 'k')
rectangle('position',[50,-6,50,6],'curvature', [0.8,0.6], 'facecolor', 'b')

s1=[300,310,315,325,330,335,345,350,320];
s2=[0,-2,-3,-4,-4,-3,-2,0,0];
fill(s1,s2,'y')
hold on
%draw the sand

C1=[100,103,107,110,115,120,140,145,150,153,157,160];
C2=[170,175,175,180,180,185,185,180,180,175,175,170];
fill(C1,C2, 'w')
hold on

C3=[160,163,167,170,175,180,200,205,210,213,217,220];
C4=[150,155,155,160,160,165,165,160,160,155,155,150];
fill(C3,C4, 'w')
hold on

C5=[40,43,47,50,55,60,80,85,90,93,97,100];
C6=[140,145,145,150,150,155,155,150,150,145,145,140];
fill(C5,C6, 'w')

b1=[275,280,285];
b2=[145,142,145];
plot(b1,b2,'k')

B1=[290,295,300];
B2=[142,139,142];
plot(B1,B2,'k')

q1=[hole,hole];
q2=[0,15];
plot(q1,q2,'k')
hold on

F1=[hole,hole,hole-5];
F2=[15,20,15];
fill(F1,F2, 'r')

r=20;
k=0:pi/100:2*pi;
xc=r*cos(k);
yc=r*sin(k);


fill(xc+280,yc+210, 'y')


xmin=-50;
xmax=350;
ymin=-10;
ymax=250;
axis([xmin xmax ymin ymax])
title('GOLF GAME','fontsize',16)
xlabel('distance traveled by the ball','fontsize',12)
ylabel('height reached by the ball','fontsize', 12)
text(-35,230,'the velocity of the wind vary from [-2 to 0]m/s','fontsize', 8)

T1=(v*sin(theta))/4.9;
%the final t

for i=1:20
t1=T1*(i/20);
x1(i)=(v*cos(theta)*t1-0.5*a*t1.^2)+(vw*t1);
y1(i)=v*sin(theta)*t1-(9.81/2)*t1.^2;
%equations for the projectile with the drag force and wind effect

plot(x1,y1,'wo')
pause(0.09)
hold on
end

I1=v*cos(theta)*T1-0.5*a*T1^2+(vw*T1);
disp('the first impact of the ball is when x equals to:')
disp(I1)


if(abs(hole-I1)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end


if (I1>50) && (I1<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
    %displays a box saying game over if the ball goes in the lake
end
    
if (I1>300) && (I1<350)
    disp('oops!! the ball ended up in the sand, game over')
    msgbox('``GAME OVER``')
    %displays a box saying game over if the ball goes in the sand
    break
end


T2=((v/2)*sin(theta))/4.9;
for i=1:6
    t2=T2*(i/6);
    x2(i)=((v/2)*cos(theta)*t2-0.5*a*t2.^2)+(vw*t2)+I1;
    y2(i)=(v/2)*sin(theta)*t2-(9.81/2)*t2.^2;
    plot(x2,y2,'wo')
    pause(0.09)
    hold on
end

I2=((v/2)*cos(theta)*T2-0.5*a*T2^2)+(vw*T2)+I1;
disp('the second impact of the ball is when x equals to:')
disp(I2)
if(abs(hole-I2)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end

if (I2>50) && (I2<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    
if (I2>300) && (I2<350)
    disp('oops!! the ball ended up in the sand, game over')
    msgbox('``GAME OVER``')
    break
end
T3=((v/4)*sin(theta))/4.9;

for i=1:2
    t3=T3*(i/2);
    x3(i)=((v/4)*cos(theta)*t3-0.5*a*t3.^2)+(vw*t3)+I2;
    y3(i)=(v/4)*sin(theta)*t3-(9.81/2)*t3.^2;
      
    plot(x3,y3,'wo')
    pause(0.09)
    hold on
end
 I3=((v/4)*cos(theta)*T3-0.5*a*T3^2)+(vw*T3)+I2;
 disp('the third impact of the ball is when x equals to:')
disp(I3)

if(abs(hole-I3)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
   else
    disp('try again')
end
    
if (I3>50) && (I3<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    
if (I3>300) && (I3<350)
    disp('oops!! the ball ended up in the sand, game over')
    msgbox('``GAME OVER``')
    break
end

end
end


   

    case 'Iron'
choice=questdlg('In what level?','Levels','easy','medium','hard','hard');


%EASY

switch choice
    case 'easy'  
hole=200
%defines the hole in a random position from 100 to 200

I1=0;    
while (abs(hole-I1)>5.0)
%evaluates the condition and execute the body when the condition holds true.  

v=input('what is the velocity?(m/s)')

%request user to input the value of the velocity in m/s

theta=input('what is the angle?(radians)')

%request user to input the angle in  radians



plot([0,v*cos(theta)],[0,v*sin(theta)],'r')
%plots the direction of the initial velocity

hold on

whitebg('c')
rectangle('position',[-100,-10,600,10], 'facecolor', 'g')
rectangle('position',[hole-5,-3,10,3], 'facecolor', 'k')



C1=[100,103,107,110,115,120,140,145,150,153,157,160];
C2=[170,175,175,180,180,185,185,180,180,175,175,170];
fill(C1,C2, 'w')
hold on

C3=[160,163,167,170,175,180,200,205,210,213,217,220];
C4=[150,155,155,160,160,165,165,160,160,155,155,150];
fill(C3,C4, 'w')
hold on

C5=[40,43,47,50,55,60,80,85,90,93,97,100];
C6=[140,145,145,150,150,155,155,150,150,145,145,140];
fill(C5,C6, 'w')

b1=[275,280,285];
b2=[145,142,145];
plot(b1,b2,'k')

B1=[290,295,300];
B2=[142,139,142];
plot(B1,B2,'k')

q1=[hole,hole];
q2=[0,15];
plot(q1,q2,'k')
hold on

F1=[hole,hole,hole-5];
F2=[15,20,15];
fill(F1,F2, 'r')

r=20;
k=0:pi/100:2*pi;
xc=r*cos(k);
yc=r*sin(k);


fill(xc+280,yc+210, 'y')


xmin=-50;
xmax=350;
ymin=-10;
ymax=250;
axis([xmin xmax ymin ymax])
title('GOLF GAME','fontsize',16)
xlabel('distance traveled by the ball','fontsize',12)
ylabel('height reached by the ball','fontsize', 12)


T1=(v*sin(theta))/4.9;
%the final t

for i=1:20
t1=T1*(i/20);
x1(i)=v*cos(theta)*t1;
y1(i)=v*sin(theta)*t1-(9.81/2)*t1.^2;

plot(x1,y1,'wo')
pause(0.09)
hold on

end

I1=v*cos(theta)*T1;
disp('the first impact of the ball is when x equals to:')
disp(I1)


if(abs(hole-I1)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end



T2=((v/2)*sin(theta))/4.9;
for i=1:6
    t2=T2*(i/6);
    x2(i)=((v/2)*cos(theta)*t2)+I1;
    y2(i)=(v/2)*sin(theta)*t2-(9.81/2)*t2.^2;
    plot(x2,y2,'wo')
    pause(0.09)
    hold on
end

I2=((v/2)*cos(theta)*T2)+I1;
disp('the second impact of the ball is when x equals to:')
disp(I2)
if(abs(hole-I2)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end


T3=((v/4)*sin(theta))/4.9;

for i=1:4
    t3=T3*(i/4);
    x3(i)=((v/4)*cos(theta)*t3)+I2;
    y3(i)=(v/4)*sin(theta)*t3-(9.81/2)*t3.^2;
      
    plot(x3,y3,'wo')
    pause(0.09)
    hold on
end
 I3=((v/4)*cos(theta)*T3)+I2;
 disp('the third impact of the ball is when x equals to:')
disp(I3)

if(abs(hole-I3)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
   else
    disp('try again')
end
end





%MEDIUM


    case 'medium'
        
hole=rand(1)*200+100
%defines the hole in a random position from 100 to 200

I1=0;
while (abs(hole-I1)>5.0)
%evaluates the condition and execute the body when the condition holds true.  

v=input('what is the velocity?(m/s)')

%request user to input the value of the velocity in m/s

theta=input('what is the angle?(radians)')

%request user to input the angle in  radians


cd=0.1; %drag coefficient
m=0.04593; %mass of the ball
d=0.04267; %diameter of the ball
p=1.2922; %density of the air
A=pi*0.25*d^2; %area of the ball
fd=0.5*cd*p*(v*cos(theta))^2*A %drag force
a=fd/m; %negative acceleration caused by the drag force




plot([0,v*cos(theta)],[0,v*sin(theta)],'r')
%plots the direction of the initial velocity

hold on

whitebg('c')
rectangle('position',[-100,-10,600,10], 'facecolor', 'g')
rectangle('position',[hole-5,-3,10,3], 'facecolor', 'k')
rectangle('position',[50,-6,50,6],'curvature', [0.8,0.6], 'facecolor', 'b')



C1=[100,103,107,110,115,120,140,145,150,153,157,160];
C2=[170,175,175,180,180,185,185,180,180,175,175,170];
fill(C1,C2, 'w')
hold on

C3=[160,163,167,170,175,180,200,205,210,213,217,220];
C4=[150,155,155,160,160,165,165,160,160,155,155,150];
fill(C3,C4, 'w')
hold on

C5=[40,43,47,50,55,60,80,85,90,93,97,100];
C6=[140,145,145,150,150,155,155,150,150,145,145,140];
fill(C5,C6, 'w')

b1=[275,280,285];
b2=[145,142,145];
plot(b1,b2,'k')

B1=[290,295,300];
B2=[142,139,142];
plot(B1,B2,'k')

q1=[hole,hole];
q2=[0,15];
plot(q1,q2,'k')
hold on

F1=[hole,hole,hole-5];
F2=[15,20,15];
fill(F1,F2, 'r')

r=20;
k=0:pi/100:2*pi;
xc=r*cos(k);
yc=r*sin(k);


fill(xc+280,yc+210, 'y')


xmin=-50;
xmax=350;
ymin=-10;
ymax=250;
axis([xmin xmax ymin ymax])
title('GOLF GAME','fontsize',16)
xlabel('distance traveled by the ball','fontsize',12)
ylabel('height reached by the ball','fontsize', 12)


T1=(v*sin(theta))/4.9;
%the final t

for i=1:20
t1=T1*(i/20);
x1(i)=(v*cos(theta)*t1-0.5*a*t1.^2);
y1(i)=v*sin(theta)*t1-(9.81/2)*t1.^2;

plot(x1,y1,'wo')
pause(0.09)
hold on

end

I1=v*cos(theta)*T1-0.5*a*T1^2;
disp('the first impact of the ball is when x equals to:')
disp(I1)


if(abs(hole-I1)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end


if (I1>50) && (I1<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    


T2=((v/2)*sin(theta))/4.9;
for i=1:6
    t2=T2*(i/6);
    x2(i)=((v/2)*cos(theta)*t2-0.5*a*t2.^2)+I1;
    y2(i)=(v/2)*sin(theta)*t2-(9.81/2)*t2.^2;
    plot(x2,y2,'wo')
    pause(0.09)
    hold on
end

I2=((v/2)*cos(theta)*T2-0.5*a*T2^2)+I1;
disp('the second impact of the ball is when x equals to:')
disp(I2)
if(abs(hole-I2)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end

if (I2>50) && (I2<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    


T3=((v/4)*sin(theta))/4.9;

for i=1:4
    t3=T3*(i/4);
    x3(i)=((v/4)*cos(theta)*t3-0.5*a*t3.^2)+I2;
    y3(i)=(v/4)*sin(theta)*t3-(9.81/2)*t3.^2;
      
    plot(x3,y3,'wo')
    pause(0.09)
    hold on
end
 I3=((v/4)*cos(theta)*T3-0.5*a*T3^2)+I2;
 disp('the third impact of the ball is when x equals to:')
disp(I3)

if(abs(hole-I3)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
   else
    disp('try again')
    
    if (I3>50) && (I3<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    
end
end

   





%HARD


    case 'hard'
        
hole=rand(1)*200+100
%defines the hole in a random position from 100 to 200

I1=0;
while (abs(hole-I1)>5.0)
%evaluates the condition and execute the body when the condition holds true.  

v=input('what is the velocity?(m/s)')

%request user to input the value of the velocity in m/s

theta=input('what is the angle?(radians)')

%request user to input the angle in  radians

vw=rand(1)*(-2) %velocity of the wind
cd=0.12; %drag coefficient
m=0.04593; %mass of the ball
d=0.04267; %diameter of the ball
p=1.2922; %density of the air
A=pi*0.25*d^2; %area of the ball
fd=0.5*cd*p*(v*cos(theta))^2*A %drag force
a=fd/m; %negative acceleration caused by the drag force




plot([0,v*cos(theta)],[0,v*sin(theta)],'r')
%plots the direction of the initial velocity

hold on

whitebg('c')
rectangle('position',[-100,-10,600,10], 'facecolor', 'g')
rectangle('position',[hole-5,-3,10,3], 'facecolor', 'k')
rectangle('position',[50,-6,50,6],'curvature', [0.8,0.6], 'facecolor', 'b')

s1=[300,310,315,325,330,335,345,350,320];
s2=[0,-2,-3,-4,-4,-3,-2,0,0];
fill(s1,s2,'y')
hold on

C1=[100,103,107,110,115,120,140,145,150,153,157,160];
C2=[170,175,175,180,180,185,185,180,180,175,175,170];
fill(C1,C2, 'w')
hold on

C3=[160,163,167,170,175,180,200,205,210,213,217,220];
C4=[150,155,155,160,160,165,165,160,160,155,155,150];
fill(C3,C4, 'w')
hold on

C5=[40,43,47,50,55,60,80,85,90,93,97,100];
C6=[140,145,145,150,150,155,155,150,150,145,145,140];
fill(C5,C6, 'w')

b1=[275,280,285];
b2=[145,142,145];
plot(b1,b2,'k')

B1=[290,295,300];
B2=[142,139,142];
plot(B1,B2,'k')

q1=[hole,hole];
q2=[0,15];
plot(q1,q2,'k')
hold on

F1=[hole,hole,hole-5];
F2=[15,20,15];
fill(F1,F2, 'r')

r=20;
k=0:pi/100:2*pi;
xc=r*cos(k);
yc=r*sin(k);


fill(xc+280,yc+210, 'y')


xmin=-50;
xmax=350;
ymin=-10;
ymax=250;
axis([xmin xmax ymin ymax])
title('GOLF GAME','fontsize',16)
xlabel('distance traveled by the ball','fontsize',12)
ylabel('height reached by the ball','fontsize', 12)
text(-35,230,'the velocity of the wind vary from [-2 to 0]m/s','fontsize', 8)

T1=(v*sin(theta))/4.9;
%the final t

for i=1:20
t1=T1*(i/20);
x1(i)=(v*cos(theta)*t1-0.5*a*t1.^2)+(vw*t1);
y1(i)=v*sin(theta)*t1-(9.81/2)*t1.^2;

plot(x1,y1,'wo')
pause(0.09)
hold on
end

I1=v*cos(theta)*T1-0.5*a*T1^2+(vw*T1);
disp('the first impact of the ball is when x equals to:')
disp(I1)


if(abs(hole-I1)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end


if (I1>50) && (I1<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    
if (I1>300) && (I1<350)
    disp('oops!! the ball ended up in the sand, game over')
    msgbox('``GAME OVER``')
    break
end


T2=((v/2)*sin(theta))/4.9;
for i=1:6
    t2=T2*(i/6);
    x2(i)=((v/2)*cos(theta)*t2-0.5*a*t2.^2)+(vw*t2)+I1;
    y2(i)=(v/2)*sin(theta)*t2-(9.81/2)*t2.^2;
    plot(x2,y2,'wo')
    pause(0.09)
    hold on
end

I2=((v/2)*cos(theta)*T2-0.5*a*T2^2)+(vw*T2)+I1;
disp('the second impact of the ball is when x equals to:')
disp(I2)
if(abs(hole-I2)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end

if (I2>50) && (I2<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    
if (I2>300) && (I2<350)
    disp('oops!! the ball ended up in the sand, game over')
    msgbox('``GAME OVER``')
    break
end
T3=((v/4)*sin(theta))/4.9;

for i=1:1.5
    t3=T3*(i/1.5);
    x3(i)=((v/4)*cos(theta)*t3-0.5*a*t3.^2)+(vw*t3)+I2;
    y3(i)=(v/4)*sin(theta)*t3-(9.81/2)*t3.^2;
      
    plot(x3,y3,'wo')
    pause(0.09)
    hold on
end
 I3=((v/4)*cos(theta)*T3-0.5*a*T3^2)+(vw*T3)+I2;
 disp('the third impact of the ball is when x equals to:')
disp(I3)

if(abs(hole-I3)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
   else
    disp('try again')
end
    
if (I3>50) && (I3<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    
if (I3>300) && (I3<350)
    disp('oops!! the ball ended up in the sand, game over')
    msgbox('``GAME OVER``')
    break
end

end
end




    case 'Wedge'
choice=questdlg('In what level?','Levels','easy','medium','hard','hard');


%EASY

switch choice
    case 'easy'  
hole=200
%defines the hole in a random position from 100 to 200

I1=0;    
while (abs(hole-I1)>5.0)
%evaluates the condition and execute the body when the condition holds true.  

v=input('what is the velocity?(m/s)')

%request user to input the value of the velocity in m/s

theta=input('what is the angle?(radians)')

%request user to input the angle in  radians



plot([0,v*cos(theta)],[0,v*sin(theta)],'r')
%plots the direction of the initial velocity

hold on

whitebg('c')
rectangle('position',[-100,-10,600,10], 'facecolor', 'g')
rectangle('position',[hole-5,-3,10,3], 'facecolor', 'k')



C1=[100,103,107,110,115,120,140,145,150,153,157,160];
C2=[170,175,175,180,180,185,185,180,180,175,175,170];
fill(C1,C2, 'w')
hold on

C3=[160,163,167,170,175,180,200,205,210,213,217,220];
C4=[150,155,155,160,160,165,165,160,160,155,155,150];
fill(C3,C4, 'w')
hold on

C5=[40,43,47,50,55,60,80,85,90,93,97,100];
C6=[140,145,145,150,150,155,155,150,150,145,145,140];
fill(C5,C6, 'w')

b1=[275,280,285];
b2=[145,142,145];
plot(b1,b2,'k')

B1=[290,295,300];
B2=[142,139,142];
plot(B1,B2,'k')

q1=[hole,hole];
q2=[0,15];
plot(q1,q2,'k')
hold on

F1=[hole,hole,hole-5];
F2=[15,20,15];
fill(F1,F2, 'r')

r=20;
k=0:pi/100:2*pi;
xc=r*cos(k);
yc=r*sin(k);


fill(xc+280,yc+210, 'y')


xmin=-50;
xmax=350;
ymin=-10;
ymax=250;
axis([xmin xmax ymin ymax])
title('GOLF GAME','fontsize',16)
xlabel('distance traveled by the ball','fontsize',12)
ylabel('height reached by the ball','fontsize', 12)


T1=(v*sin(theta))/4.9;
%the final t

for i=1:20
t1=T1*(i/20);
x1(i)=v*cos(theta)*t1;
y1(i)=v*sin(theta)*t1-(9.81/2)*t1.^2;

plot(x1,y1,'wo')
pause(0.09)
hold on

end

I1=v*cos(theta)*T1;
disp('the first impact of the ball is when x equals to:')
disp(I1)


if(abs(hole-I1)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end



T2=((v/2)*sin(theta))/4.9;
for i=1:6
    t2=T2*(i/6);
    x2(i)=((v/2)*cos(theta)*t2)+I1;
    y2(i)=(v/2)*sin(theta)*t2-(9.81/2)*t2.^2;
    plot(x2,y2,'wo')
    pause(0.09)
    hold on
end

I2=((v/2)*cos(theta)*T2)+I1;
disp('the second impact of the ball is when x equals to:')
disp(I2)
if(abs(hole-I2)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end


T3=((v/4)*sin(theta))/4.9;

for i=1:4
    t3=T3*(i/4);
    x3(i)=((v/4)*cos(theta)*t3)+I2;
    y3(i)=(v/4)*sin(theta)*t3-(9.81/2)*t3.^2;
      
    plot(x3,y3,'wo')
    pause(0.09)
    hold on
end
 I3=((v/4)*cos(theta)*T3)+I2;
 disp('the third impact of the ball is when x equals to:')
disp(I3)

if(abs(hole-I3)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
   else
    disp('try again')
end
end






%MEDIUM


    case 'medium'
        
hole=rand(1)*200+100
%defines the hole in a random position from 100 to 200

I1=0;
while (abs(hole-I1)>5.0)
%evaluates the condition and execute the body when the condition holds true.  

v=input('what is the velocity?(m/s)')

%request user to input the value of the velocity in m/s

theta=input('what is the angle?(radians)')

%request user to input the angle in  radians


cd=0.1; %drag coefficient
m=0.04593; %mass of the ball
d=0.04267; %diameter of the ball
p=1.2922; %density of the air
A=pi*0.25*d^2; %area of the ball
fd=0.5*cd*p*(v*cos(theta))^2*A %drag force
a=fd/m; %negative acceleration caused by the drag force




plot([0,v*cos(theta)],[0,v*sin(theta)],'r')
%plots the direction of the initial velocity

hold on

whitebg('c')
rectangle('position',[-100,-10,600,10], 'facecolor', 'g')
rectangle('position',[hole-5,-3,10,3], 'facecolor', 'k')
rectangle('position',[50,-6,50,6],'curvature', [0.8,0.6], 'facecolor', 'b')



C1=[100,103,107,110,115,120,140,145,150,153,157,160];
C2=[170,175,175,180,180,185,185,180,180,175,175,170];
fill(C1,C2, 'w')
hold on

C3=[160,163,167,170,175,180,200,205,210,213,217,220];
C4=[150,155,155,160,160,165,165,160,160,155,155,150];
fill(C3,C4, 'w')
hold on

C5=[40,43,47,50,55,60,80,85,90,93,97,100];
C6=[140,145,145,150,150,155,155,150,150,145,145,140];
fill(C5,C6, 'w')

b1=[275,280,285];
b2=[145,142,145];
plot(b1,b2,'k')

B1=[290,295,300];
B2=[142,139,142];
plot(B1,B2,'k')

q1=[hole,hole];
q2=[0,15];
plot(q1,q2,'k')
hold on

F1=[hole,hole,hole-5];
F2=[15,20,15];
fill(F1,F2, 'r')

r=20;
k=0:pi/100:2*pi;
xc=r*cos(k);
yc=r*sin(k);


fill(xc+280,yc+210, 'y')


xmin=-50;
xmax=350;
ymin=-10;
ymax=250;
axis([xmin xmax ymin ymax])
title('GOLF GAME','fontsize',16)
xlabel('distance traveled by the ball','fontsize',12)
ylabel('height reached by the ball','fontsize', 12)


T1=(v*sin(theta))/4.9;
%the final t

for i=1:20
t1=T1*(i/20);
x1(i)=(v*cos(theta)*t1-0.5*a*t1.^2);
y1(i)=v*sin(theta)*t1-(9.81/2)*t1.^2;

plot(x1,y1,'wo')
pause(0.09)
hold on

end

I1=v*cos(theta)*T1-0.5*a*T1^2;
disp('the first impact of the ball is when x equals to:')
disp(I1)


if(abs(hole-I1)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end


if (I1>50) && (I1<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    


T2=((v/2)*sin(theta))/4.9;
for i=1:6
    t2=T2*(i/6);
    x2(i)=((v/2)*cos(theta)*t2-0.5*a*t2.^2)+I1;
    y2(i)=(v/2)*sin(theta)*t2-(9.81/2)*t2.^2;
    plot(x2,y2,'wo')
    pause(0.09)
    hold on
end

I2=((v/2)*cos(theta)*T2-0.5*a*T2^2)+I1;
disp('the second impact of the ball is when x equals to:')
disp(I2)
if(abs(hole-I2)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end

if (I2>50) && (I2<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    


T3=((v/4)*sin(theta))/4.9;

for i=1:4
    t3=T3*(i/4);
    x3(i)=((v/4)*cos(theta)*t3-0.5*a*t3.^2)+I2;
    y3(i)=(v/4)*sin(theta)*t3-(9.81/2)*t3.^2;
      
    plot(x3,y3,'wo')
    pause(0.09)
    hold on
end
 I3=((v/4)*cos(theta)*T3-0.5*a*T3^2)+I2;
 disp('the third impact of the ball is when x equals to:')
disp(I3)

if(abs(hole-I3)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
   else
    disp('try again')
    
    if (I3>50) && (I3<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    
end
end

   





%HARD


case 'hard'
        
hole=rand(1)*200+100
%defines the hole in a random position from 100 to 200

I1=0;
while (abs(hole-I1)>5.0)
%evaluates the condition and execute the body when the condition holds true.  

v=input('what is the velocity?(m/s)')

%request user to input the value of the velocity in m/s

theta=input('what is the angle?(radians)')

%request user to input the angle in  radians

vw=rand(1)*(-2) %velocity of the wind
cd=0.08; %drag coefficient
m=0.04593; %mass of the ball
d=0.04267; %diameter of the ball
p=1.2922; %density of the air
A=pi*0.25*d^2; %area of the ball
fd=0.5*cd*p*(v*cos(theta))^2*A %drag force
a=fd/m; %negative acceleration caused by the drag force




plot([0,v*cos(theta)],[0,v*sin(theta)],'r')
%plots the direction of the initial velocity

hold on

whitebg('c')
rectangle('position',[-100,-10,600,10], 'facecolor', 'g')
rectangle('position',[hole-5,-3,10,3], 'facecolor', 'k')
rectangle('position',[50,-6,50,6],'curvature', [0.8,0.6], 'facecolor', 'b')

s1=[300,310,315,325,330,335,345,350,320];
s2=[0,-2,-3,-4,-4,-3,-2,0,0];
fill(s1,s2,'y')
hold on

C1=[100,103,107,110,115,120,140,145,150,153,157,160];
C2=[170,175,175,180,180,185,185,180,180,175,175,170];
fill(C1,C2, 'w')
hold on

C3=[160,163,167,170,175,180,200,205,210,213,217,220];
C4=[150,155,155,160,160,165,165,160,160,155,155,150];
fill(C3,C4, 'w')
hold on

C5=[40,43,47,50,55,60,80,85,90,93,97,100];
C6=[140,145,145,150,150,155,155,150,150,145,145,140];
fill(C5,C6, 'w')

b1=[275,280,285];
b2=[145,142,145];
plot(b1,b2,'k')

B1=[290,295,300];
B2=[142,139,142];
plot(B1,B2,'k')

q1=[hole,hole];
q2=[0,15];
plot(q1,q2,'k')
hold on

F1=[hole,hole,hole-5];
F2=[15,20,15];
fill(F1,F2, 'r')

r=20;
k=0:pi/100:2*pi;
xc=r*cos(k);
yc=r*sin(k);


fill(xc+280,yc+210, 'y')


xmin=-50;
xmax=350;
ymin=-10;
ymax=250;
axis([xmin xmax ymin ymax])
title('GOLF GAME','fontsize',16)
xlabel('distance traveled by the ball','fontsize',12)
ylabel('height reached by the ball','fontsize', 12)
text(-35,230,'the velocity of the wind vary from [-2 to 0]m/s','fontsize', 8)

T1=(v*sin(theta))/4.9;
%the final t

for i=1:20
t1=T1*(i/20);
x1(i)=(v*cos(theta)*t1-0.5*a*t1.^2)+(vw*t1);
y1(i)=v*sin(theta)*t1-(9.81/2)*t1.^2;

plot(x1,y1,'wo')
pause(0.09)
hold on
end

I1=v*cos(theta)*T1-0.5*a*T1^2+(vw*T1);
disp('the first impact of the ball is when x equals to:')
disp(I1)


if(abs(hole-I1)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end


if (I1>50) && (I1<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    
if (I1>300) && (I1<350)
    disp('oops!! the ball ended up in the sand, game over')
    msgbox('``GAME OVER``')
    break
end


T2=((v/2)*sin(theta))/4.9;
for i=1:6
    t2=T2*(i/6);
    x2(i)=((v/2)*cos(theta)*t2-0.5*a*t2.^2)+(vw*t2)+I1;
    y2(i)=(v/2)*sin(theta)*t2-(9.81/2)*t2.^2;
    plot(x2,y2,'wo')
    pause(0.09)
    hold on
end

I2=((v/2)*cos(theta)*T2-0.5*a*T2^2)+(vw*T2)+I1;
disp('the second impact of the ball is when x equals to:')
disp(I2)
if(abs(hole-I2)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
end

if (I2>50) && (I2<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    
if (I2>300) && (I2<350)
    disp('oops!! the ball ended up in the sand, game over')
    msgbox('``GAME OVER``')
    break
end
T3=((v/4)*sin(theta))/4.9;

for i=1:4
    t3=T3*(i/4);
    x3(i)=((v/4)*cos(theta)*t3-0.5*a*t3.^2)+(vw*t3)+I2;
    y3(i)=(v/4)*sin(theta)*t3-(9.81/2)*t3.^2;
      
    plot(x3,y3,'wo')
    pause(0.09)
    hold on
end
 I3=((v/4)*cos(theta)*T3-0.5*a*T3^2)+(vw*T3)+I2;
 disp('the third impact of the ball is when x equals to:')
disp(I3)

if(abs(hole-I3)<5.0)
    disp('hole in one')
    msgbox('``CONGRATULATION, YOU WON``')
    break
   else
    disp('try again')
end
    
if (I3>50) && (I3<100)
    disp('`the ball ended up in the water, game over')
    msgbox('``GAME OVER``')
    break
end
    
if (I3>300) && (I3<350)
    disp('oops!! the ball ended up in the sand, game over')
    msgbox('``GAME OVER``')
    break
end

end
end

end
