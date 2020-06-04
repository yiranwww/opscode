load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_6\Data_orbit_6.mat', 'x_po', 'y_po', 'z_po');
x_6 = double(x_po); y_6 = double(y_po); z_6 = double(z_po);
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_7\Data_orbit_7.mat', 'x_po', 'y_po', 'z_po');
x_7 = double(x_po); y_7 = double(y_po); z_7 = double(z_po);
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_8\Data_orbit_8.mat', 'x_po', 'y_po', 'z_po');
x_8 = double(x_po); y_8 = double(y_po); z_8 = double(z_po);
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_9\Data_orbit_9.mat', 'x_po', 'y_po', 'z_po');
x_9 = double(x_po); y_9 = double(y_po); z_9 = double(z_po);
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_10\Data_orbit_10.mat', 'x_po', 'y_po', 'z_po');
x_10 = double(x_po); y_10 = double(y_po); z_10 = double(z_po);

x = [x_6; x_7; x_8; x_9; x_10];
y = [y_6; y_7; y_8; y_9; y_10];
z = [z_6; z_7; z_8; z_9; z_10];

s_6 = size(x_6); s_6 = s_6(1);
id_test_6 = randperm(s_6, 10);
x_6_test = x_6(id_test_6,:,:);
x_6_train = x_6;
x_6_train(id_test_6,:,:)=[];
y_6_test = y_6(id_test_6,:,:);
y_6_train = y_6;
y_6_train(id_test_6,:,:)=[];
z_6_test = z_6(id_test_6,:,:);
z_6_train = z_6;
z_6_train(id_test_6,:,:)=[];

s_7 = size(x_7); s_7 = s_7(1);
id_test_7 = randperm(s_7, 10);
x_7_test = x_7(id_test_7,:,:);
x_7_train = x_7;
x_7_train(id_test_7,:,:)=[];
y_7_test = y_7(id_test_7,:,:);
y_7_train = y_7;
y_7_train(id_test_7,:,:)=[];
z_7_test = z_7(id_test_7,:,:);
z_7_train = z_7;
z_7_train(id_test_7,:,:)=[];

s_8 = size(x_8); s_8 = s_8(1);
id_test_8 = randperm(s_8, 10);
x_8_test = x_8(id_test_8,:,:);
x_8_train = x_8;
x_8_train(id_test_8,:,:)=[];
y_8_test = y_8(id_test_8,:,:);
y_8_train = y_8;
y_8_train(id_test_8,:,:)=[];
z_8_test = z_8(id_test_8,:,:);
z_8_train = z_8;
z_8_train(id_test_8,:,:)=[];

s_9 = size(x_9); s_9 = s_9(1);
id_test_9 = randperm(s_9, 10);
x_9_test = x_9(id_test_9,:,:);
x_9_train = x_9;
x_9_train(id_test_9,:,:)=[];
y_9_test = y_9(id_test_9,:,:);
y_9_train = y_9;
y_9_train(id_test_9,:,:)=[];
z_9_test = z_9(id_test_9,:,:);
z_9_train = z_9;
z_9_train(id_test_9,:,:)=[];

s_10 = size(x_10); s_10 = s_10(1);
id_test_10 = randperm(s_10, 10);
x_10_test = x_10(id_test_10,:,:);
x_10_train = x_10;
x_10_train(id_test_10,:,:)=[];
y_10_test = y_10(id_test_10,:,:);
y_10_train = y_10;
y_10_train(id_test_10,:,:)=[];
z_10_test = z_10(id_test_10,:,:);
z_10_train = z_10;
z_10_train(id_test_10,:,:)=[];

x_test_b = [x_6_test; x_7_test; x_8_test; x_9_test; x_10_test];
y_test_b = [y_6_test; y_7_test; y_8_test; y_9_test; y_10_test];
z_test_b = [z_6_test; z_7_test; z_8_test; z_9_test; z_10_test];
x_train_b = [x_6_train; x_7_train; x_8_train; x_9_train; x_10_train];
y_train_b = [y_6_train; y_7_train; y_8_train; y_9_train; y_10_train];
z_train_b = [z_6_train; z_7_train; z_8_train; z_9_train; z_10_train];

%%
a =-1;
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

Test_norX_b=a+kx*(x_test_b - Xmin);
Test_norY_b=a+ky*(y_test_b - Ymin);
Test_norZ_b=a+kz*(z_test_b - Zmin);
Train_norX_b=a+kx*(x_train_b - Xmin);
Train_norY_b=a+ky*(y_train_b - Ymin);
Train_norZ_b=a+kz*(z_train_b - Zmin);

n = size(Test_norX_b);
p = n(1);
length = 30
for i = 1:p
    for j = 1:length
        Norm_Test_b(i, 1+3*(j-1)) = Test_norX_b(i,j);
        Norm_Test_b(i, 2+3*(j-1)) = Test_norY_b(i,j);
        Norm_Test_b(i, 3+3*(j-1)) = Test_norZ_b(i,j);
    end
end

nt = size(Norm_Test_b);
nt = nt(1);
for i = 1:nt
    track = Norm_Test_b(i,:);
    for n = 1:30
        
            mea(n,1) = track(1+(n-1)*3);
            mea(n,2) = track(2+(n-1)*3);
            mea(n,3) = track(3+(n-1)*3);
        
    end
    test_tensor_b(i, :, :) = mea;
end

n = size(Train_norX_b);
p = n(1);
length = 30
for i = 1:p
    for j = 1:length
        Norm_Train_b(i, 1+3*(j-1)) = Train_norX_b(i,j);
        Norm_Train_b(i, 2+3*(j-1)) = Train_norY_b(i,j);
        Norm_Train_b(i, 3+3*(j-1)) = Train_norZ_b(i,j);
    end
end

nt = size(Norm_Train_b);
nt = nt(1);
for i = 1:nt
    track = Norm_Train_b(i,:);
    for n = 1:30
        
            mea(n,1) = track(1+(n-1)*3);
            mea(n,2) = track(2+(n-1)*3);
            mea(n,3) = track(3+(n-1)*3);
        
    end
    train_tensor_b(i, :, :) = mea;
end
save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\traintensor_b_part.mat', 'train_tensor_b');
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\testtensor_b_part.mat', 'test_tensor_b');
%   save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\test_b_tensor_2.mat', 'test_tensor_b');
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\AllDataPrepared_b_part.mat')