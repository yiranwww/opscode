% plot the result when test in orbit 1-5

clear;close all; clc;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\train.mat')
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\train_pred.mat')
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\test.mat')
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\test_pred.mat')
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\testb.mat')
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\test_pred_b.mat')
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\validation.mat')
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\vali_pred.mat')
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\Total_norm_data_twotrack.mat');..., 'min_x_train', 'max_x_train', 'min_y_train', 'max_y_train', 'min_z_train', 'max_z_train');
train = double(train); train_pred = double(train_pred);
test = double(test); test_pred = double(test_pred);
test_b = double(test_b); test_b_pred = double(test_b_pred);
valiation = double(validation); vali_pred = double(vali_pred);

n = size(train);length = n(2); n = n(1); 
for i = 1:n
    for j = 1:length
        
    train_x_po(i, j) = train(i, j, 1);
    train_y_po(i, j) = train(i, j, 2);
    train_z_po(i, j) = train(i, j, 3);
%      train_x_po(i,:) = train(i,1, :);
%     train_y_po(i, :) = train(i, 2, :);
%     train_z_po(i, :) = train(i, 3, :);
    train_x_po_pred(i, j) = train_pred(i, j, 1);
    train_y_po_pred(i, j) = train_pred(i, j, 2);
    train_z_po_pred(i, j) = train_pred(i, j, 3);
%         train_x_po_pred(i, :) = train_pred(i,1, :);
%     train_y_po_pred(i, :) = train_pred(i, 2, :);
%     train_z_po_pred(i, :) = train_pred(i, 3, :);
   
    end
end

Train_x_po = ((train_x_po - a) /kx) + Xmin;
Train_y_po = ((train_y_po - a) /ky) + Ymin;
Train_z_po = ((train_z_po - a) /kz) + Zmin;

Train_x_po_pred = ((train_x_po_pred - a) /kx) + Xmin;
Train_y_po_pred = ((train_y_po_pred - a) /ky) + Ymin;
Train_z_po_pred = ((train_z_po_pred - a) /kz) + Zmin;
n = size(Train_x_po_pred); n=n(1);
for m = 1:n
rmse_x_train(m) = sqrt(immse(Train_x_po(m,:),Train_x_po_pred(m,:)));
rmse_y_train(m) = sqrt(immse(Train_y_po(m,:),Train_y_po_pred(m,:)));
rmse_z_train(m) = sqrt(immse(Train_z_po(m,:),Train_z_po_pred(m,:)));
end
RMSE_x_train = sqrt(immse(Train_x_po,Train_x_po_pred));
RMSE_y_train = sqrt(immse(Train_y_po,Train_y_po_pred));
RMSE_z_train = sqrt(immse(Train_z_po,Train_z_po_pred));

m = size(test); m = m(1);
for i = 1:m
    for j = 1:length

        x_po(i, j) = test(i, j, 1);
        y_po(i, j) = test(i, j, 2);
        z_po(i, j) = test(i, j, 3);
%           x_po(i, :) = test(i,1, :);
%         y_po(i, :) = test(i,2, :);
%         z_po(i, :) = test(i, 3, :);      
        x_po_pred(i, j) = test_pred(i, j, 1);
        y_po_pred(i, j) = test_pred(i, j, 2);
        z_po_pred(i, j) = test_pred(i, j, 3);
%         x_po_pred(i, :) = test_pred(i, 1, :);
%         y_po_pred(i, :) = test_pred(i, 2, :);
%         z_po_pred(i, :) = test_pred(i, 3, :);
    end
end
X_po = (x_po - a) /kx + Xmin;
Y_po = (y_po - a) /ky + Ymin;
Z_po = (z_po - a) /kz + Zmin;

X_po_pred = ((x_po_pred - a) /kx) + Xmin;
Y_po_pred = ((y_po_pred - a) /ky) + Ymin;
Z_po_pred = ((z_po_pred - a) /kz) + Zmin;

RMSE_x_test  = sqrt(immse(X_po,X_po_pred));
RMSE_y_test  = sqrt(immse(Y_po,Y_po_pred));
RMSE_z_test  = sqrt(immse(Z_po,Z_po_pred));
%% Result analysis
n =m;
for m = 1:n
    %RMSE
rmse_x(m) = sqrt(immse(X_po(m,:),X_po_pred(m,:)));
rmse_y(m) = sqrt(immse(Y_po(m,:),Y_po_pred(m,:)));
rmse_z(m) = sqrt(immse(Z_po(m,:),Z_po_pred(m,:)));

R_test = corrcoef(test, test_pred);
R_x = corrcoef(X_po(m,:), X_po_pred(m,:));
R_ey = corrcoef(Y_po(m,:), Y_po_pred(m,:));
R_z = corrcoef(Z_po(m,:), Z_po_pred(m,:));
R_train = corrcoef(train, train_pred);

abs_error_x(m,:) = abs(X_po(m,:) - X_po_pred(m,:));
abs_error_y(m,:) = abs(Y_po(m,:) - Y_po_pred(m,:));
abs_error_z(m,:) = abs(Z_po(m,:) - Z_po_pred(m,:));

rela_error_x(m,:) = (abs((X_po(m,:) - X_po_pred(m,:)))./abs(X_po(m,:)))*100;
rela_error_y(m,:) = (abs(Y_po(m,:) - Y_po_pred(m,:))./abs(Y_po(m,:)))*100;
rela_error_z(m,:) = (abs(Z_po(m,:) - Z_po_pred(m,:))./abs(Z_po(m,:)))*100;

error_x(m,:) = X_po(m,:) - X_po_pred(m,:);
error_y(m,:) = Y_po(m,:) - Y_po_pred(m,:);
error_z(m,:) = Z_po(m,:) - Z_po_pred(m,:);
end
% %% for m = [10 30 50 70 90 109 110 111 112 113 114 115]
% for m = 1
% figure(1)
% plot(X_po(m,:),'b--o', 'LineWidth',2,'MarkerSize',10);
% hold on
% plot(X_po_pred(m,:),'r-*','LineWidth',2,'MarkerSize',10)
% % legend('TrueValue','PredValue')
% xerror = X_po(m,:)-X_po_pred(m,:);
% x_mae = sum(abs(xerror))/length;
% xlabel('Measurement Index','FontSize',25)
% ylabel('X [km]','FontSize',25)
% set(gca,'FontSize',15,'FontWeight','bold')
% titlename = ['X- ',num2str(m),'th, MAE = ', num2str(x_mae)];
% title(titlename,'FontSize',30);
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\png\X_',num2str(m)];
% print('-f1',figname,'-dpng')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\fig\X_',num2str(m),'.fig'];
% savefig(figname)
% 
% figure(2)
% plot(Y_po(m,:),'b--o', 'LineWidth',2,'MarkerSize',10);
% hold on
% plot(Y_po_pred(m,:),'r-*','LineWidth',2,'MarkerSize',10)
% % legend('TrueValue','PredValue')
% yerror = Y_po(m,:)-Y_po_pred(m,:);
% y_mae = sum(abs(yerror))/length;
% xlabel('Measurement Index','FontSize',25)
% ylabel('Y [km]','FontSize',25)
% titlename = ['Y-',num2str(m),'th, MAE = ', num2str(y_mae)];
% set(gca,'FontSize',15,'FontWeight','bold')
% title(titlename,'FontSize',30);
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\png\Y_',num2str(m)];
% print('-f2',figname,'-dpng')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\fig\Y_',num2str(m),'.fig'];
% savefig(figname)
% 
% figure(3)
% plot(Z_po(m,:),'b--o', 'LineWidth',2,'MarkerSize',10);
% hold on
% plot(Z_po_pred(m,:),'r-*','LineWidth',2,'MarkerSize',10)
% % legend('TrueValue','PredValue')
% zerror = Z_po(m,:) - Z_po_pred(m,:);
% z_mae = sum(abs(zerror))/length;
% xlabel('Measurement Index','FontSize',25)
% ylabel('Z [km]','FontSize',25)
% set(gca,'FontSize',15,'FontWeight','bold')
% titlename = ['Z- ',num2str(m),'th, MAE = ', num2str(z_mae)];
% title(titlename,'FontSize',30);
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\png\Z_',num2str(m)];
% print('-f3',figname,'-dpng')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\fig\Z_',num2str(m),'.fig'];
% savefig(figname)
% 
% figure(7)
% plot(rela_error_x(m,:),'b--o', 'LineWidth',2,'MarkerSize',10);
% titlename = ['Relative Error of ',num2str(m),'th X '];
% title(titlename,'FontSize',30);
% set(gca,'FontSize',20)
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\png\RelaX_',num2str(m)];
% print('-f7',figname,'-dpng')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\fig\RelaX_',num2str(m),'.fig'];
% savefig(figname)
% figure(8)
% plot(rela_error_y(m,:),'b--o', 'LineWidth',2,'MarkerSize',10);
% titlename = ['Relative Error of  ',num2str(m),'th Y'];
% set(gca,'FontSize',15,'FontWeight','bold')
% title(titlename,'FontSize',30);
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\png\RelaY_',num2str(m)];
% print('-f8',figname,'-dpng')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\fig\RelaY_',num2str(m),'.fig'];
% savefig(figname)
% figure(9)
% plot(rela_error_z(m,:),'b--o', 'LineWidth',2,'MarkerSize',10);
% titlename = ['Relative Error of ',num2str(m),'th Z'];
% set(gca,'FontSize',15,'FontWeight','bold')
% title(titlename,'FontSize',30);
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\png\RelaZ_',num2str(m)];
% print('-f9',figname,'-dpng')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\fig\RelaZ_',num2str(m),'.fig'];
% savefig(figname)
% 
% figure(16)
% stem(error_x(m,:),'b--o', 'LineWidth',2,'MarkerSize',10);
% titlename = ['Err Dis of ',num2str(m),'th X ']
% set(gca,'FontSize',15,'FontWeight','bold')
% title(titlename,'FontSize',30);
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\png\XErrorDis_',num2str(m)];
% print('-f16',figname,'-dpng')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\fig\XErrorDis_',num2str(m),'.fig'];
% savefig(figname)
% 
% figure(17)
% stem(error_y(m,:),'b--o', 'LineWidth',2,'MarkerSize',10);
% titlename = ['Err Dis of ',num2str(m),'th Y ']
% set(gca,'FontSize',15,'FontWeight','bold')
% title(titlename,'FontSize',30);
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\png\YErrorDis_',num2str(m)];
% print('-f17',figname,'-dpng')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\fig\YErrorDis_',num2str(m),'.fig'];
% savefig(figname)
% 
% figure(18)
% stem(error_z(m,:),'b--o', 'LineWidth',2,'MarkerSize',10);
% titlename = ['Err Dis of ',num2str(m),'th Z ']
% set(gca,'FontSize',15,'FontWeight','bold')
% title(titlename,'FontSize',30);
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\png\ZErrorDis_',num2str(m)];
% print('-f18',figname,'-dpng')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\fig\ZErrorDis_',num2str(m),'.fig'];
% savefig(figname)
% close all
% end
% 
% figure(19)
% subplot(3,1,1)
% stem(rmse_x, 'LineWidth',2,'MarkerSize',3');
% set(gca,'FontSize',15,'FontWeight','bold')
% title('Test_11 Test RMSE','FontSize',30);
% subplot(3,1,2)
% stem(rmse_y, 'LineWidth',2,'MarkerSize',3);
% set(gca,'FontSize',15,'FontWeight','bold')
% subplot(3,1,3)
% stem(rmse_z, 'LineWidth',2,'MarkerSize',3);
% set(gca,'FontSize',15,'FontWeight','bold')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\png\RMSE_test'];
% print('-f19',figname,'-dpng')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\fig\RMSE_test.fig'];
% savefig(figname)
% 
% figure(20)
% subplot(3,1,1)
% stem(rmse_x_train,'MarkerSize',3');
% set(gca,'FontSize',15,'FontWeight','bold')
% title('Test_11 Train RMSE','FontSize',30);
% subplot(3,1,2)
% stem(rmse_y_train,'MarkerSize',3);
% set(gca,'FontSize',15,'FontWeight','bold')
% subplot(3,1,3)
% stem(rmse_z_train,'MarkerSize',3);
% set(gca,'FontSize',15,'FontWeight','bold')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\png\RMSE_train'];
% print('-f20',figname,'-dpng')
% figname = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\fig\RMSE_train.fig'];
% savefig(figname)

%% test b
m = size(test_b); m = m(1);
for i = 1:m
    for j = 1:length

        x_b_po(i, j) = test_b(i, j, 1);
        y_b_po(i, j) = test_b(i, j, 2);
        z_b_po(i, j) = test_b(i, j, 3);
     
        x_b_po_pred(i, j) = test_b_pred(i, j, 1);
        y_b_po_pred(i, j) = test_b_pred(i, j, 2);
        z_b_po_pred(i, j) = test_b_pred(i, j, 3);

    end
end

X_b_po = ((x_b_po - a) /kx) + Xmin;
Y_b_po = ((y_b_po - a) /ky) + Ymin;
Z_b_po = ((z_b_po - a) /kz) + Zmin;

X_b_po_pred = ((x_b_po_pred - a) /kx) + Xmin;
Y_b_po_pred = ((y_b_po_pred - a) /ky) + Ymin;
Z_b_po_pred = ((z_b_po_pred - a) /kz) + Zmin;

RMSE_x_b_test  = sqrt(immse(X_b_po,X_b_po_pred));
RMSE_y_b_test  = sqrt(immse(Y_b_po,Y_b_po_pred));
RMSE_z_b_test  = sqrt(immse(Z_b_po,Z_b_po_pred));


%% validation data
m = size(validation); m = m(1);
for i = 1:m
    for j = 1:length

        x_vali(i, j) = validation(i, j, 1);
        y_vali(i, j) = validation(i, j, 2);
        z_vali(i, j) = validation(i, j, 3);
     
        x_vali_pred(i, j) = vali_pred(i, j, 1);
        y_vali_pred(i, j) = vali_pred(i, j, 2);
        z_vali_pred(i, j) = vali_pred(i, j, 3);

    end
end

X_vali = ((x_vali - a) /kx) + Xmin;
Y_vali = ((y_vali - a) /ky) + Ymin;
Z_vali = ((z_vali - a) /kz) + Zmin;

X_vali_pred = ((x_vali_pred - a) /kx) + Xmin;
Y_vali_pred = ((y_vali_pred - a) /ky) + Ymin;
Z_vali_pred = ((z_vali_pred - a) /kz) + Zmin;

RMSE_x_vali  = sqrt(immse(X_vali,X_vali_pred));
RMSE_y_vali  = sqrt(immse(Y_vali,Y_vali_pred));
RMSE_z_vali  = sqrt(immse(Z_vali,Z_vali_pred));
%% save data
save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\TwoTrack\activation\sigmoid-sigmoid\Result.mat')