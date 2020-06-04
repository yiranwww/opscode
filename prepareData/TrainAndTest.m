%% combine the data to get training data
close all; clear; clc;
% load data
orbit_1 = cell2mat(struct2cell(load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\CollectTrainData\Tensor_train_orbit_1.mat')));
orbit_2 = cell2mat(struct2cell(load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\CollectTrainData\Tensor_train_orbit_2.mat')));
orbit_3 = cell2mat(struct2cell(load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\CollectTrainData\Tensor_train_orbit_3.mat')));
orbit_4 = cell2mat(struct2cell(load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\CollectTrainData\Tensor_train_orbit_4.mat')));
orbit_5 = cell2mat(struct2cell(load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\CollectTrainData\Tensor_train_orbit_5.mat')));

% split the data
s_1 = size(orbit_1); s_1 = s_1(1);
id_test_1 = randi([1 s_1(1)],1,10);
orbit_1_test = orbit_1(id_test_1,:,:);
orbit_1_train = orbit_1;
orbit_1_train(id_test_1,:,:)=[];

s_2 = size(orbit_2); s_2 = s_2(1);
id_test_2 = randi([1 s_2(1)],1,10);
orbit_2_test = orbit_2(id_test_2,:,:);
orbit_2_train = orbit_2;
orbit_2_train(id_test_2,:,:)=[];

s_3 = size(orbit_3); s_3 = s_3(1);
id_test_3 = randi([1 s_3(1)],1,10);
orbit_3_test = orbit_3(id_test_3,:,:);
orbit_3_train = orbit_3;
orbit_3_train(id_test_3,:,:)=[];

s_4 = size(orbit_4); s_4 = s_4(1);
id_test_4 = randi([1 s_4(1)],1,10);
orbit_4_test = orbit_4(id_test_4,:,:);
orbit_4_train = orbit_4;
orbit_4_train(id_test_4,:,:)=[];

s_5 = size(orbit_5); s_5 = s_5(1);
id_test_5 = randi([1 s_5(1)],1,10);
orbit_5_test = orbit_5(id_test_5,:,:);
orbit_5_train = orbit_5;
orbit_5_train(id_test_5,:,:)=[];

% form to train and test
orbit_train = [orbit_1_train; 
                    orbit_2_train;
                    orbit_3_train;
                    orbit_4_train;
                    orbit_5_train];
                
orbit_test = [orbit_1_test;
                    orbit_2_test;
                    orbit_3_test;
                    orbit_4_test;
                    orbit_5_test];
                
 % save the data
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\orbit_train.mat', 'orbit_train');
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\orbit_test.mat', 'orbit_test');
 save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\DataPrepared.mat')