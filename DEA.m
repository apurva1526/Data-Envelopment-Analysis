clear
clc
I1=[5,4,3.3,4.3,5.2,1.8,6.5,4.7,4.3,6.4,3.5,5.3,3.8,2.2,4.1,2.9,1.5,3.9,2.6,2.5,2.4,3.8,2.8,3.3,2.5,3.4,3.3,2,2.6,3.7,2.1,1.3,3.5,3.1];
I2=[5.9342,2.0891,1.17578,3.0337,0.6041,1.2476,0.5988,0.1145,0.73852,1.9583,0.869,1.2885,1.0636,2.0733,42.9489,0.5537,0.07,0.16,0.135936,0.24078,0.38132,0.6734,2.7845,0.99556,0.54264,0.008,0.15576,3.4065,0,1.0356,0,0.05312,0.358,0.44784];
O1=[70.17,60.167,60,71.833,109.83,66.83,157.5,20.67,49.333,90.833,38.833,68.167,55.167,52.5,44.5,86.66,51.33,488.66,31,47.33,78.5,41,40.33,39.83,100.17,115.17,28.667,28.833,41.66,30.83,32.167,28.5,64.33,27];
O2=[23.902,15.176,21.098,24.47,8.63,2.196,16.94,19.92,13.451,20.941,22.235,15.45,16.941,3.84,23.168,7.843,8,11.941,5.569,9.569,13.22,4.549,15.490,6.573,10.431,12.235,16.08,29.098,7.53,16.63,7.1373,8.2,10.902,10.353];
O3=[26,7,12,11,1,0,7,3,3,6,10,2,5,2,6,1,1,0,4,1,5,0,2,7,2,7,2,1,1,2,1,0,3,0];
for i = 1:34
    f=[1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];
    A=[0,-O1(1),-O1(2),-O1(3),-O1(4),-O1(5),-O1(6),-O1(7),-O1(8),-O1(9),-O1(10),-O1(11),-O1(12),-O1(13),-O1(14),-O1(15),-O1(16),-O1(17),-O1(18),-O1(19),-O1(20),-O1(21),-O1(22),-O1(23),-O1(24),-O1(25),-O1(26),-O1(27),-O1(28),-O1(29),-O1(30),-O1(31),-O1(32),-O1(33),-O1(34);0,-O2(1),-O2(2),-O2(3),-O2(4),-O2(5),-O2(6),-O2(7),-O2(8),-O2(9),-O2(10),-O2(11),-O2(12),-O2(13),-O2(14),-O2(15),-O2(16),-O2(17),-O2(18),-O2(19),O2(20),-O2(21),-O2(22),-O2(23),-O2(24),-O2(25),-O2(26),-O2(27),-O2(28),-O2(29),-O2(30),-O2(31),-O2(32),-O2(33),-O2(34);0,-O3(1),-O3(2),-O3(3),-O3(4),-O3(5),-O3(6),-O3(7),-O3(8),-O3(9),-O3(10),-O3(11),-O3(12),-O3(13),-O3(14),-O3(15),-O3(16),-O3(17),-O3(18),-O3(19),-O3(20),-O3(21),-O3(22),-O3(23),-O3(24),-O3(25),-O3(26),-O3(27),-O3(28),-O3(29),-O3(30),-O3(31),-O3(32),-O3(33),-O3(34);-I1(i),I1(1),I1(2),I1(3),I1(4),I1(5),I1(6),I1(7),I1(8),I1(9),I1(10),I1(11),I1(12),I1(13),I1(14),I1(15),I1(16),I1(17),I1(18),I1(19),I1(20),I1(21),I1(22),I1(23),I1(24),I1(25),I1(26),I1(27),I1(28),I1(29),I1(30),I1(31),I1(32),I1(33),I1(34); -I2(i),I2(1),I2(2),I2(3),I2(4),I2(5),I2(6),I2(7),I2(8),I2(9),I2(10),I2(11),I2(12),I2(13),I2(14),I2(15),I2(16),I2(17),I2(18),I2(19),I2(20),I2(21),I2(22),I2(23),I2(24),I2(25),I2(26),I2(27),I2(28),I2(29),I2(30),I2(31),I2(32),I2(33),I2(34)];
    Aeq = zeros(1,35);
    Beq = [0];
    b=[-O1(i);-O2(i);-O3(i);0;0];
    lb = zeros(1,35);
    ub = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
    [x,fval]=linprog(f,A,b,Aeq,Beq,lb,ub);
    z(i)=fval;
end
z
    