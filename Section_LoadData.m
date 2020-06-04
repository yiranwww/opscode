km = 1e3;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_1\Section_orbit_1.mat', 'x_po', 'y_po', 'z_po');
x_1 = double(x_po)/km; y_1 = double(y_po)/km; z_1 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_2\Section_orbit_2.mat', 'x_po', 'y_po', 'z_po');
x_2 = double(x_po)/km; y_2 = double(y_po)/km; z_2 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_3\Section_orbit_3.mat', 'x_po', 'y_po', 'z_po');
x_3 = double(x_po)/km; y_3 = double(y_po)/km; z_3 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_3\Section_orbit_4.mat', 'x_po', 'y_po', 'z_po');
x_4 = double(x_po)/km; y_4 = double(y_po)/km; z_4 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_3\Section_orbit_5.mat', 'x_po', 'y_po', 'z_po');
x_5 = double(x_po)/km; y_5 = double(y_po)/km; z_5 = double(z_po)/km;

load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_3\Section_orbit_6.mat', 'x_po', 'y_po', 'z_po');
x_6 = double(x_po)/km; y_6 = double(y_po)/km; z_6 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_3\Section_orbit_7.mat', 'x_po', 'y_po', 'z_po');
x_7 = double(x_po)/km; y_7 = double(y_po)/km; z_7 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_3\Section_orbit_8.mat', 'x_po', 'y_po', 'z_po');
x_8 = double(x_po)/km; y_8 = double(y_po)/km; z_8 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_3\Section_orbit_9.mat', 'x_po', 'y_po', 'z_po');
x_9 = double(x_po)/km; y_9 = double(y_po)/km; z_9 = double(z_po)/km;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_3\Section_orbit_10.mat', 'x_po', 'y_po', 'z_po');
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

x = [x_1; x_2; x_3; x_4; x_5];
y = [y_1; y_2; y_3; y_4; y_5];
z = [z_1; z_2; z_3; z_4; z_5];
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

xall =[x_1; x_2; x_3; x_4; x_5; x_6; x_7; x_8; x_9; x_10];
yall =[y_1; y_2; y_3; y_4; y_5; y_6; y_7; y_8; y_9; y_10];
zall =[z_1; z_2; z_3; z_4; z_5; z_6; z_7; z_8; z_9; z_10];

rng(1)
s_1 = size(x_1); s_1 = s_1(1);
id_test_1 = randperm(s_1, 20);
x_1_test = x_1(id_test_1,:,:);
x_1_train = x_1;
x_1_train(id_test_1,:,:)=[];
y_1_test = y_1(id_test_1,:,:);
y_1_train = y_1;
y_1_train(id_test_1,:,:)=[];
z_1_test = z_1(id_test_1,:,:);
z_1_train = z_1;
z_1_train(id_test_1,:,:)=[];

s_2 = size(x_2); s_2 = s_2(1);
id_test_2 =randperm(s_2, 20);
x_2_test = x_2(id_test_2,:,:);
x_2_train = x_2;
x_2_train(id_test_2,:,:)=[];
y_2_test = y_2(id_test_2,:,:);
y_2_train = y_2;
y_2_train(id_test_2,:,:)=[];
z_2_test = z_2(id_test_2,:,:);
z_2_train = z_2;
z_2_train(id_test_2,:,:)=[];

s_3 = size(x_3); s_3 = s_3(1);
id_test_3 = randperm(s_3, 20);
x_3_test = x_3(id_test_3,:,:);
x_3_train = x_3;
x_3_train(id_test_3,:,:)=[];
y_3_test = y_3(id_test_3,:,:);
y_3_train = y_3;
y_3_train(id_test_3,:,:)=[];
z_3_test = z_3(id_test_3,:,:);
z_3_train = z_3;
z_3_train(id_test_3,:,:)=[];

s_4 = size(x_4); s_4 = s_4(1);
id_test_4 = randperm(s_4, 20);
x_4_test = x_4(id_test_4,:,:);
x_4_train = x_4;
x_4_train(id_test_4,:,:)=[];
y_4_test = y_4(id_test_4,:,:);
y_4_train = y_4;
y_4_train(id_test_4,:,:)=[];
z_4_test = z_4(id_test_4,:,:);
z_4_train = z_4;
z_4_train(id_test_4,:,:)=[];

s_5 = size(x_5); s_5 = s_5(1);
id_test_5 = randperm(s_5, 20);
x_5_test = x_5(id_test_5,:,:);
x_5_train = x_5;
x_5_train(id_test_5,:,:)=[];
y_5_test = y_5(id_test_5,:,:);
y_5_train = y_5;
y_5_train(id_test_5,:,:)=[];
z_5_test = z_5(id_test_5,:,:);
z_5_train = z_5;
z_5_train(id_test_5,:,:)=[];

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

X_test = [x_1_test; x_2_test; x_3_test; x_4_test; x_5_test];
Y_test = [y_1_test; y_2_test; y_3_test; y_4_test; y_5_test];
Z_test = [z_1_test; z_2_test; z_3_test; z_4_test; z_5_test];
x_train = [x_1_train; x_2_train; x_3_train; x_4_train; x_5_train];
y_train = [y_1_train; y_2_train; y_3_train; y_4_train; y_5_train];
z_train = [z_1_train; z_2_train; z_3_train; z_4_train; z_5_train];
for i = 1:50
    x_test(i, :) = X_test(1+2*(i-1), :);
    x_validation(i, :) = X_test(2*i, :);
    y_test(i, :) = Y_test(1+2*(i-1), :);
    y_validation(i, :) = Y_test(2*i, :);
    z_test(i, :) = Z_test(1+2*(i-1), :);
    z_validation(i, :) = Z_test(2*i, :);    
end

x_test_b = [x_6_test; x_7_test; x_8_test; x_9_test; x_10_test];
y_test_b = [y_6_test; y_7_test; y_8_test; y_9_test; y_10_test];
z_test_b = [z_6_test; z_7_test; z_8_test; z_9_test; z_10_test];
x_train_b = [x_6_train; x_7_train; x_8_train; x_9_train; x_10_train];
y_train_b = [y_6_train; y_7_train; y_8_train; y_9_train; y_10_train];
z_train_b = [z_6_train; z_7_train; z_8_train; z_9_train; z_10_train];


%% combine all the data to get parameters
n = size(norX);
p = n(1);
length = 30
for i = 1:p
    for j = 1:length
        Norm_DataAll(i, 1+3*(j-1)) = norX(i,j);
        Norm_DataAll(i, 2+3*(j-1)) = norY(i,j);
        Norm_DataAll(i, 3+3*(j-1)) = norZ(i,j);
    end
end
save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\Section_norm_data.mat', 'Xmin', 'Xmax', 'Ymin', 'Ymax', 'Zmin', 'Zmax', 'kx', 'ky', 'kz', 'a', 'b');

nt = size(Norm_DataAll);
nt = nt(1);
for i = 1:nt
    track = Norm_DataAll(i,:);
    for n = 1:30
        
            mea(n,1) = track(1+(n-1)*3);
            mea(n,2) = track(2+(n-1)*3);
            mea(n,3) = track(3+(n-1)*3);
        
    end
    new_tensor(i, :, :) = mea;
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

All_norX=a+kx*(xall -Xmin);
All_norY=a+ky*(yall -Ymin);
All_norZ=a+kz*(zall -Zmin);

n = size(All_norX);
p = n(1);
length = 30
for i = 1:p
    for j = 1:length
        Norm_All(i, 1+3*(j-1)) = All_norX(i,j);
        Norm_All(i, 2+3*(j-1)) = All_norY(i,j);
        Norm_All(i, 3+3*(j-1)) = All_norZ(i,j);
    end
end

nt = size(Norm_All);
nt = nt(1);
for i = 1:nt
    track = Norm_All(i,:);
    for n = 1:30
        
            mea(n,1) = track(1+(n-1)*3);
            mea(n,2) = track(2+(n-1)*3);
            mea(n,3) = track(3+(n-1)*3);
        
    end
    all_tensor(i, :, :) = mea;
end

mea=[];
n = size(Test_norX);
p = n(1);
length = 30
for i = 1:p
    for j = 1:length
        Norm_Test(i, 1+3*(j-1)) = Test_norX(i,j);
        Norm_Test(i, 2+3*(j-1)) = Test_norY(i,j);
        Norm_Test(i, 3+3*(j-1)) = Test_norZ(i,j);
    end
end

nt = size(Norm_Test);
nt = nt(1);
for i = 1:nt
    track = Norm_Test(i,:);
    for n = 1:30
        
            mea(n,1) = track(1+(n-1)*3);
            mea(n,2) = track(2+(n-1)*3);
            mea(n,3) = track(3+(n-1)*3);
        
    end
    test_tensor(i, :, :) = mea;
end

mea=[];
n = size(Vali_norX);
p = n(1);
length = 30
for i = 1:p
    for j = 1:length
        Norm_Vali(i, 1+3*(j-1)) = Vali_norX(i,j);
        Norm_Vali(i, 2+3*(j-1)) = Vali_norY(i,j);
        Norm_Vali(i, 3+3*(j-1)) = Vali_norZ(i,j);
    end
end
nt = size(Norm_Vali);
nt = nt(1);
for i = 1:nt
    track = Norm_Vali(i,:);
    for n = 1:30
        
            mea(n,1) = track(1+(n-1)*3);
            mea(n,2) = track(2+(n-1)*3);
            mea(n,3) = track(3+(n-1)*3);
        
    end
    validation_tensor(i, :, :) = mea;
end

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

n = size(Train_norX);
p = n(1);
length = 30
for i = 1:p
    for j = 1:length
        Norm_Train(i, 1+3*(j-1)) = Train_norX(i,j);
        Norm_Train(i, 2+3*(j-1)) = Train_norY(i,j);
        Norm_Train(i, 3+3*(j-1)) = Train_norZ(i,j);
    end
end

nt = size(Norm_Train);
nt = nt(1);
for i = 1:nt
    track = Norm_Train(i,:);
    for n = 1:30
        
            mea(n,1) = track(1+(n-1)*3);
            mea(n,2) = track(2+(n-1)*3);
            mea(n,3) = track(3+(n-1)*3);
        
    end
    train_tensor(i, :, :) = mea;
end
save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\section_train.mat', 'train_tensor');
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\section_testA.mat', 'test_tensor');
save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\section_testB.mat', 'test_tensor_b');
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\section_vali.mat', 'validation_tensor');
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\section_allTrainingData.mat', 'new_tensor');
  save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\section_allData.mat', 'all_tensor');
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\section_All.mat')
