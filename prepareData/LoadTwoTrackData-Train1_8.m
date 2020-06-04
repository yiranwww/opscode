%% Load two-track data

km = 1e3;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_1\Data_orbit_1.mat', 'x_po', 'y_po', 'z_po');
x_1 = double(x_po)/km; y_1 = double(y_po)/km; z_1 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_2\Data_orbit_2.mat', 'x_po', 'y_po', 'z_po');
x_2 = double(x_po)/km; y_2 = double(y_po)/km; z_2 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_3\Data_orbit_3.mat', 'x_po', 'y_po', 'z_po');
x_3 = double(x_po)/km; y_3 = double(y_po)/km; z_3 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_4\Data_orbit_4.mat', 'x_po', 'y_po', 'z_po');
x_4 = double(x_po)/km; y_4 = double(y_po)/km; z_4 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_5\Data_orbit_5.mat', 'x_po', 'y_po', 'z_po');
x_5 = double(x_po)/km; y_5 = double(y_po)/km; z_5 = double(z_po)/km;

load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_6\Data_orbit_6.mat', 'x_po', 'y_po', 'z_po');
x_6 = double(x_po)/km; y_6 = double(y_po)/km; z_6 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_7\Data_orbit_7.mat', 'x_po', 'y_po', 'z_po');
x_7 = double(x_po)/km; y_7 = double(y_po)/km; z_7 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_8\Data_orbit_8.mat', 'x_po', 'y_po', 'z_po');
x_8 = double(x_po)/km; y_8 = double(y_po)/km; z_8 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_9\Data_orbit_9.mat', 'x_po', 'y_po', 'z_po');
x_9 = double(x_po)/km; y_9 = double(y_po)/km; z_9 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_10\Data_orbit_10.mat', 'x_po', 'y_po', 'z_po');
x_10 = double(x_po)/km; y_10 = double(y_po)/km; z_10 = double(z_po)/km;

% load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_1\Data_orbit_1.mat', 'x_po', 'y_po', 'z_po');
% x_1 = double(x_po) ; y_1 = double(y_po) ; z_1 = double(z_po) ;
% load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_2\Data_orbit_2.mat', 'x_po', 'y_po', 'z_po');
% x_2 = double(x_po) ; y_2 = double(y_po) ; z_2 = double(z_po) ;
% load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_3\Data_orbit_3.mat', 'x_po', 'y_po', 'z_po');
% x_3 = double(x_po) ; y_3 = double(y_po) ; z_3 = double(z_po) ;
% load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_4\Data_orbit_4.mat', 'x_po', 'y_po', 'z_po');
% x_4 = double(x_po) ; y_4 = double(y_po) ; z_4 = double(z_po) ;
% load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_5\Data_orbit_5.mat', 'x_po', 'y_po', 'z_po');
% x_5 = double(x_po) ; y_5 = double(y_po) ; z_5 = double(z_po) ;
% 
% load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_6\Data_orbit_6.mat', 'x_po', 'y_po', 'z_po');
% x_6 = double(x_po) ; y_6 = double(y_po) ; z_6 = double(z_po) ;
% load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_7\Data_orbit_7.mat', 'x_po', 'y_po', 'z_po');
% x_7 = double(x_po) ; y_7 = double(y_po) ; z_7 = double(z_po) ;
% load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_8\Data_orbit_8.mat', 'x_po', 'y_po', 'z_po');
% x_8 = double(x_po) ; y_8 = double(y_po) ; z_8 = double(z_po) ;
% load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_9\Data_orbit_9.mat', 'x_po', 'y_po', 'z_po');
% x_9 = double(x_po) ; y_9 = double(y_po) ; z_9 = double(z_po) ;
% load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_10\Data_orbit_10.mat', 'x_po', 'y_po', 'z_po');
% x_10 = double(x_po) ; y_10 = double(y_po) ; z_10 = double(z_po) ;

x = [x_1; x_2; x_3; x_4; x_5; x_6; x_7; x_8];
y = [y_1; y_2; y_3; y_4; y_5; y_6; y_7; y_8];
z = [z_1; z_2; z_3; z_4; z_5; z_6; z_7; z_8];
 % normalize the data
a = 0;
b = 1;
xall = x';
xall = xall(:);
Xmax=max(xall);%计算最大值
Xmin=min(xall);%计算最小值
kx=(b-a)/(Xmax-Xmin);
norX=a+kx*(x-Xmin);

yall = y';
yall = yall(:);
Ymax=max(yall);
Ymin=min(yall);
ky=(b-a)/(Ymax-Ymin);
norY=a+ky*(y-Ymin);

zall = z';
zall = zall(:);
Zmax=max(zall);%计算最大值
Zmin=min(zall);%计算最小值
kz=(b-a)/(Zmax-Zmin);
norZ=a+kz*(z-Zmin);
save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\Total_norm_data_twotrack.mat', 'Xmin', 'Xmax', 'Ymin', 'Ymax', 'Zmin', 'Zmax', 'kx', 'ky', 'kz', 'a', 'b');


rng(1)
% orbit 1
% x
s_1 = size(x_1); s_1 = s_1(1);
id_test_1 = randperm(s_1-1, 20);
x_1_test_1 = x_1(id_test_1, :, :);  x_1_test_2 = x_1(id_test_1 + 1, :, :);
x_1_train_1 = x_1; x_1_train_2 = x_1;
x_1_train_1(id_test_1, :, :) = []; x_1_train_2(id_test_1 + 1, :, :) = [];
% y
y_1_test_1 = y_1(id_test_1, :, :); y_1_test_2 = y_1(id_test_1 + 1, :, :);
y_1_train_1 = y_1; y_1_train_2 = y_1;
y_1_train_1(id_test_1, :, :) = []; y_1_train_2(id_test_1 + 1, :, :) = [];
%z
z_1_test_1 = z_1(id_test_1,:,:); z_1_test_2 = z_2(id_test_1 + 1, :, :);
z_1_train_1 = z_1; z_1_train_2 = z_1;
z_1_train_1(id_test_1, :, :) = []; z_1_train_2(id_test_1 + 1, :, :) = [];

% orbit 2
% x
s_2 = size(x_2); s_2 = s_2(1);
id_test_2 = randperm(s_2-1, 20);
x_2_test_1 = x_2(id_test_2, :, :);   x_2_test_2 = x_2(id_test_2 + 1, :, :);
x_2_train_1 = x_2; x_2_train_2 = x_2;
x_2_train_1(id_test_2, :, :) = []; x_2_train_2(id_test_2 + 1, :, :) = [];
% y
y_2_test_1 = y_2(id_test_2, :, :); y_2_test_2 = y_2(id_test_2 + 1, :, :);
y_2_train_1 = y_2; y_2_train_2 = y_2;
y_2_train_1(id_test_2, :, :) = []; y_2_train_2(id_test_2 + 1, :, :) = [];
%z
z_2_test_1 = z_2(id_test_2,:,:);z_2_test_2 = z_2(id_test_2 + 1, :, :);
z_2_train_1 = z_2; z_2_train_2 = z_2;
z_2_train_1(id_test_2, :, :) = []; z_2_train_2(id_test_2 + 1, :, :) = [];

% orbit 3
% x
s_3 = size(x_3); s_3 = s_3(1);
id_test_3 = randperm(s_3-1, 20);
x_3_test_1 = x_3(id_test_3, :, :);   x_3_test_2 = x_3(id_test_3 + 1, :, :);
x_3_train_1 = x_3; x_3_train_2 = x_3;
x_3_train_1(id_test_3, :, :) = []; x_3_train_2(id_test_3 + 1, :, :) = [];
% y
y_3_test_1 = y_3(id_test_3, :, :); y_3_test_2 = y_3(id_test_3 + 1, :, :);
y_3_train_1 = y_3; y_3_train_2 = y_3;
y_3_train_1(id_test_3, :, :) = []; y_3_train_2(id_test_3 + 1, :, :) = [];
%z
z_3_test_1 = z_3(id_test_3,:,:);z_3_test_2 = z_3(id_test_3 + 1, :, :);
z_3_train_1 = z_3; z_3_train_2 = z_3;
z_3_train_1(id_test_3, :, :) = []; z_3_train_2(id_test_3 + 1, :, :) = [];

% orbit 4
% x
s_4 = size(x_4); s_4 = s_4(1);
id_test_4 = randperm(s_4-1, 20);
x_4_test_1 = x_4(id_test_4, :, :);   x_4_test_2 = x_4(id_test_4 + 1, :, :);
x_4_train_1 = x_4; x_4_train_2 = x_4;
x_4_train_1(id_test_4, :, :) = []; x_4_train_2(id_test_4 + 1, :, :) = [];
% y
y_4_test_1 = y_4(id_test_4, :, :); y_4_test_2 = y_4(id_test_4 + 1, :, :);
y_4_train_1 = y_4; y_4_train_2 = y_4;
y_4_train_1(id_test_4, :, :) = []; y_4_train_2(id_test_4 + 1, :, :) = [];
%z
z_4_test_1 = z_4(id_test_4,:,:);z_4_test_2 = z_4(id_test_4 + 1, :, :);
z_4_train_1 = z_4; z_4_train_2 = z_4;
z_4_train_1(id_test_4, :, :) = []; z_4_train_2(id_test_4 + 1, :, :) = [];

% orbit 5
% x
s_5 = size(x_5); s_5 = s_5(1);
id_test_5 = randperm(s_5-1, 20);
x_5_test_1 = x_5(id_test_5, :, :);   x_5_test_2 = x_5(id_test_5 + 1, :, :);
x_5_train_1 = x_5; x_5_train_2 = x_5;
x_5_train_1(id_test_5, :, :) = []; x_5_train_2(id_test_5 + 1, :, :) = [];
% y
y_5_test_1 = y_5(id_test_5, :, :); y_5_test_2 = y_5(id_test_5 + 1, :, :);
y_5_train_1 = y_5; y_5_train_2 = y_5;
y_5_train_1(id_test_5, :, :) = []; y_5_train_2(id_test_5 + 1, :, :) = [];
%z
z_5_test_1 = z_5(id_test_5,:,:);z_5_test_2 = z_5(id_test_5 + 1, :, :);
z_5_train_1 = z_5; z_5_train_2 = z_5;
z_5_train_1(id_test_5, :, :) = []; z_5_train_2(id_test_5 + 1, :, :) = [];

% orbit 6
% x
s_6 = size(x_6); s_6 = s_6(1);
id_test_6 = randperm(s_6-1, 20);
x_6_test_1 = x_6(id_test_6, :, :);   x_6_test_2 = x_6(id_test_6 + 1, :, :);
x_6_train_1 = x_6; x_6_train_2 = x_6;
x_6_train_1(id_test_6, :, :) = []; x_6_train_2(id_test_6 + 1, :, :) = [];
% y
y_6_test_1 = y_6(id_test_6, :, :); y_6_test_2 = y_6(id_test_6 + 1, :, :);
y_6_train_1 = y_6; y_6_train_2 = y_6;
y_6_train_1(id_test_6, :, :) = []; y_6_train_2(id_test_6 + 1, :, :) = [];
%z
z_6_test_1 = z_6(id_test_6,:,:);z_6_test_2 = z_6(id_test_6 + 1, :, :);
z_6_train_1 = z_6; z_6_train_2 = z_6;
z_6_train_1(id_test_6, :, :) = []; z_6_train_2(id_test_6 + 1, :, :) = [];

% orbit 7
% x
s_7 = size(x_7); s_7 = s_7(1);
id_test_7 = randperm(s_7-1, 20);
x_7_test_1 = x_7(id_test_7, :, :);   x_7_test_2 = x_7(id_test_7 + 1, :, :);
x_7_train_1 = x_7; x_7_train_2 = x_7;
x_7_train_1(id_test_7, :, :) = []; x_7_train_2(id_test_7 + 1, :, :) = [];
% y
y_7_test_1 = y_7(id_test_7, :, :); y_7_test_2 = y_7(id_test_7 + 1, :, :);
y_7_train_1 = y_7; y_7_train_2 = y_7;
y_7_train_1(id_test_7, :, :) = []; y_7_train_2(id_test_7 + 1, :, :) = [];
%z
z_7_test_1 = z_7(id_test_7,:,:);z_7_test_2 = z_7(id_test_7 + 1, :, :);
z_7_train_1 = z_7; z_7_train_2 = z_7;
z_7_train_1(id_test_7, :, :) = []; z_7_train_2(id_test_7 + 1, :, :) = [];

% orbit 8
% x
s_8 = size(x_8); s_8 = s_8(1);
id_test_8 = randperm(s_8-1, 20);
x_8_test_1 = x_8(id_test_8, :, :);   x_8_test_2 = x_8(id_test_8 + 1, :, :);
x_8_train_1 = x_8; x_8_train_2 = x_8;
x_8_train_1(id_test_8, :, :) = []; x_8_train_2(id_test_8 + 1, :, :) = [];
% y
y_8_test_1 = y_8(id_test_8, :, :); y_8_test_2 = y_8(id_test_8 + 1, :, :);
y_8_train_1 = y_8; y_8_train_2 = y_8;
y_8_train_1(id_test_8, :, :) = []; y_8_train_2(id_test_8 + 1, :, :) = [];
%z
z_8_test_1 = z_8(id_test_8,:,:);z_8_test_2 = z_8(id_test_8 + 1, :, :);
z_8_train_1 = z_8; z_8_train_2 = z_8;
z_8_train_1(id_test_8, :, :) = []; z_8_train_2(id_test_8 + 1, :, :) = [];

% orbit 9
% x
s_9 = size(x_9); s_9 = s_9(1);
id_test_9 = randperm(s_9-1, 20);
x_9_test_1 = x_9(id_test_9, :, :);   x_9_test_2 = x_9(id_test_9 + 1, :, :);
x_9_train_1 = x_9; x_9_train_2 = x_9;
x_9_train_1(id_test_9, :, :) = []; x_9_train_2(id_test_9 + 1, :, :) = [];
% y
y_9_test_1 = y_9(id_test_9, :, :); y_9_test_2 = y_9(id_test_9 + 1, :, :);
y_9_train_1 = y_9; y_9_train_2 = y_9;
y_9_train_1(id_test_9, :, :) = []; y_9_train_2(id_test_9 + 1, :, :) = [];
%z
z_9_test_1 = z_9(id_test_9,:,:);z_9_test_2 = z_9(id_test_9 + 1, :, :);
z_9_train_1 = z_9; z_9_train_2 = z_9;
z_9_train_1(id_test_9, :, :) = []; z_9_train_2(id_test_9 + 1, :, :) = [];

% orbit 10
% x
s_10 = size(x_10); s_10 = s_10(1);
id_test_10 = randperm(s_10-1, 20);
x_10_test_1 = x_10(id_test_10, :, :);   x_10_test_2 = x_10(id_test_10 + 1, :, :);
x_10_train_1 = x_10; x_10_train_2 = x_10;
x_10_train_1(id_test_10, :, :) = []; x_10_train_2(id_test_10 + 1, :, :) = [];
% y
y_10_test_1 = y_10(id_test_10, :, :); y_10_test_2 = y_10(id_test_10 + 1, :, :);
y_10_train_1 = y_10; y_10_train_2 = y_10;
y_10_train_1(id_test_10, :, :) = []; y_10_train_2(id_test_10 + 1, :, :) = [];
%z
z_10_test_1 = z_10(id_test_9,:,:);z_10_test_2 = z_10(id_test_10 + 1, :, :);
z_10_train_1 = z_10; z_10_train_2 = z_10;
z_10_train_1(id_test_10, :, :) = []; z_10_train_2(id_test_10 + 1, :, :) = [];

X_test_1 = [x_1_test_1; x_2_test_1; x_3_test_1; x_4_test_1; x_5_test_1; x_6_test_1; x_7_test_1; x_8_test_1];
X_test_2 = [x_1_test_2; x_2_test_2; x_3_test_2; x_4_test_2; x_5_test_2; x_6_test_2; x_7_test_2; x_8_test_2];
Y_test_1 = [y_1_test_1; y_2_test_1; y_3_test_1; y_4_test_1; y_5_test_1; y_6_test_1; y_7_test_1; y_8_test_1];
Y_test_2 = [y_1_test_2; y_2_test_2; y_3_test_2; y_4_test_2; y_5_test_2; y_6_test_2; y_7_test_2; y_8_test_2];
Z_test_1 = [z_1_test_1; z_2_test_1; z_3_test_1; z_4_test_1; z_5_test_1; z_6_test_1; z_7_test_1; z_8_test_1];
Z_test_2 = [z_1_test_2; z_2_test_2; z_3_test_2; z_4_test_2; z_5_test_2; z_6_test_2; z_7_test_2; z_8_test_2];
X_train_1 = [x_1_train_1; x_2_train_1; x_3_train_1; x_4_train_1; x_5_train_1; x_6_train_1; x_7_train_1; x_8_train_1];
X_train_2 = [x_1_train_2; x_2_train_2; x_3_train_2; x_4_train_2; x_5_train_2; x_6_train_2; x_7_train_2; x_8_train_2];
Y_train_1 = [y_1_train_1; y_2_train_1; y_3_train_1; y_4_train_1; y_5_train_1;];
Y_train_2 = [y_1_train_2; y_2_train_2; y_3_train_2; y_4_train_2; y_5_train_2];
Z_train_1 = [z_1_train_1; z_2_train_1; z_3_train_1; z_4_train_1; z_5_train_1];
Z_train_2 = [z_1_train_2; z_2_train_2; z_3_train_2; z_4_train_2; z_5_train_2];

X_test = [X_test_1 X_test_2]; Y_test = [Y_test_1 Y_test_2]; Z_test = [Z_test_1 Z_test_2];
x_train = [X_train_1 X_train_2]; y_train = [Y_train_1 Y_train_2]; z_train = [Z_train_1 Z_train_2];

x_test_b_1 = [x_6_test_1; x_7_test_1; x_8_test_1; x_9_test_1; x_10_test_1];
y_test_b_1 = [y_6_test_1; y_7_test_1; y_8_test_1; y_9_test_1; y_10_test_1];
z_test_b_1 = [z_6_test_1; z_7_test_1; z_8_test_1; z_9_test_1; z_10_test_1];
x_test_b_2 = [x_6_test_2; x_7_test_2; x_8_test_2; x_9_test_2; x_10_test_2];
y_test_b_2 = [y_6_test_2; y_7_test_2; y_8_test_2; y_9_test_2; y_10_test_2];
z_test_b_2 = [z_6_test_2; z_7_test_2; z_8_test_2; z_9_test_2; z_10_test_2];

x_test_b = [x_test_b_1 x_test_b_2]; y_test_b = [y_test_b_1 y_test_b_2]; z_test_b = [z_test_b_1 z_test_b_2];

for i = 1:50
    x_test(i, :) = X_test(1+2*(i-1), :);
    x_validation(i, :) = X_test(2*i, :);
    y_test(i, :) = Y_test(1+2*(i-1), :);
    y_validation(i, :) = Y_test(2*i, :);
    z_test(i, :) = Z_test(1+2*(i-1), :);
    z_validation(i, :) = Z_test(2*i, :);    
end

%% get train tensor
Test_norX=a+kx*(x_test-Xmin);
Test_norY=a+ky*(y_test-Ymin);
Test_norZ=a+kz*(z_test-Zmin);

Vali_norX = a+kx*(x_validation-Xmin);
Vali_norY = a+ky*(y_validation-Ymin);
Vali_norZ = a+kz*(z_validation-Zmin);

Test_norX_b=a+kx*(x_test_b - Xmin);
Test_norY_b=a+ky*(y_test_b - Ymin);
Test_norZ_b=a+kz*(z_test_b - Zmin);

Train_norX=a+kx*(x_train-Xmin);
Train_norY=a+ky*(y_train-Ymin);
Train_norZ=a+kz*(z_train-Zmin);

%% combine to tensor
% training data
n = size(Train_norX);
p = n(1);
length = 30;
for i = 1:p
    for j = 1:length*2
        Norm_Train(i, 1+3*(j-1)) = Train_norX(i,j);
        Norm_Train(i, 2+3*(j-1)) = Train_norY(i,j);
        Norm_Train(i, 3+3*(j-1)) = Train_norZ(i,j);
    end
end

nt = size(Norm_Train);
nt = nt(1);
for i = 1:nt
    track = Norm_Train(i,:);
    for n = 1:length*2
        
            mea(n,1) = track(1+(n-1)*3);
            mea(n,2) = track(2+(n-1)*3);
            mea(n,3) = track(3+(n-1)*3);
        
    end
    train_tensor(i, :, :) = mea;
end

% validation data
n = size(Vali_norX);
p = n(1);
length = 30;
for i = 1:p
    for j = 1:length*2
        Norm_Vali(i, 1+3*(j-1)) = Vali_norX(i,j);
        Norm_Vali(i, 2+3*(j-1)) = Vali_norY(i,j);
        Norm_Vali(i, 3+3*(j-1)) = Vali_norZ(i,j);
    end
end

nt = size(Norm_Vali);
nt = nt(1);
for i = 1:nt
    track = Norm_Vali(i,:);
    for n = 1:length*2
        
            mea(n,1) = track(1+(n-1)*3);
            mea(n,2) = track(2+(n-1)*3);
            mea(n,3) = track(3+(n-1)*3);
        
    end
    vali_tensor(i, :, :) = mea;
end


% TestA data
n = size(Test_norX);
p = n(1);
length = 30;
for i = 1:p
    for j = 1:length*2
        Norm_TestA(i, 1+3*(j-1)) = Test_norX(i,j);
        Norm_TestA(i, 2+3*(j-1)) = Test_norX(i,j);
        Norm_TestA(i, 3+3*(j-1)) = Test_norX(i,j);
    end
end

nt = size(Norm_TestA);
nt = nt(1);
for i = 1:nt
    track = Norm_TestA(i,:);
    for n = 1:length*2
        
            mea(n,1) = track(1+(n-1)*3);
            mea(n,2) = track(2+(n-1)*3);
            mea(n,3) = track(3+(n-1)*3);
        
    end
    testa_tensor(i, :, :) = mea;
end


% TestB data
n = size(Test_norX_b);
p = n(1);
length = 30;
for i = 1:p
    for j = 1:length*2
        Norm_TestB(i, 1+3*(j-1)) = Test_norX_b(i,j);
        Norm_TestB(i, 2+3*(j-1)) = Test_norX_b(i,j);
        Norm_TestB(i, 3+3*(j-1)) = Test_norX_b(i,j);
    end
end

nt = size(Norm_TestB);
nt = nt(1);
for i = 1:nt
    track = Norm_TestB(i,:);
    for n = 1:length*2
        
            mea(n,1) = track(1+(n-1)*3);
            mea(n,2) = track(2+(n-1)*3);
            mea(n,3) = track(3+(n-1)*3);
        
    end
    testb_tensor(i, :, :) = mea;
end
save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\twotrack_train.mat', 'train_tensor');
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\twotrack_testa.mat', 'testa_tensor');
save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\twotrack_testb.mat', 'testb_tensor');
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\twotrack_validation.mat', 'vali_tensor');
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\twotrack_AllData.mat')