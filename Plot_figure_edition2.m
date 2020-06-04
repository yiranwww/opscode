% plot edition Two
% 画 3x10 个子图，行是training, validation, testing，列是取10个代表性的。
% 然后画对 X, Y, Z 分别画3个图，颜色用 RCM 区分。
close all
clear;
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\withValidation\256-4\Result.mat');

figure1 = figure('WindowState','maximized');
for i = 1:10
    subplot(3,10,i)
    plot(Train_x_po(5*i + 53*(i-1), :), 'k--o')
    hold on
    plot(Train_x_po_pred(5*i + 53*(i-1), :), 'r-*')
    xerror = Train_x_po(5*i, :)-Train_x_po_pred(5*i, :);
    x_mae = sum(abs(xerror))/length;
    x_mae = round(x_mae, 1);
    titlename = ['MAE=', num2str(x_mae)];
    title(titlename,'FontSize',12,'FontWeight','bold');
    orbit = round(i/2);
    xname = ['Orbit-', num2str(orbit)];
    xlabel(xname, 'FontSize', 20, 'FontWeight', 'bold');
    set(gca,'FontSize',6, 'FontWeight', 'bold');
    if i == 1
        yname = ['Training-X[km]']
        ylabel(yname, 'FontSize', 14, 'FontWeight', 'bold');
    end
    
    subplot(3,10,i+10)
    plot(X_po(5*i, :), 'k--o')
    hold on
    plot(X_po_pred(5*i,:), 'g-*')
    xerror = X_po(5*i, :)-X_po_pred(5*i, :);
    x_mae = sum(abs(xerror))/length;
     x_mae = round(x_mae, 1);
    titlename = ['MAE=', num2str(x_mae)];
    title(titlename,'FontSize',12,'FontWeight','bold');
    orbit = round(i/2);
    xname = ['Orbit-', num2str(orbit)];
    xlabel(xname, 'FontSize', 20, 'FontWeight', 'bold');
    set(gca,'FontSize',6, 'FontWeight', 'bold');
    if i == 1
        yname = ['Validation-X[km]']
        ylabel(yname, 'FontSize', 14, 'FontWeight', 'bold');
    end
    
    subplot(3,10,i+20)
    plot(X_b_po(5*i, :), 'k--o')
    hold on
    plot(X_b_po_pred(5*i,:), 'b-*')
    xerror = X_b_po(5*i, :)-X_b_po_pred(5*i, :);
    x_mae = sum(abs(xerror))/length;
     x_mae = round(x_mae, 1);
    titlename = ['MAE=', num2str(x_mae)];
    title(titlename,'FontSize',12,'FontWeight','bold');
    orbit = round(i/2)+5;
    xname = ['Orbit-', num2str(orbit)];
    xlabel(xname, 'FontSize', 20, 'FontWeight', 'bold');
    set(gca,'FontSize',6, 'FontWeight', 'bold');
    if i == 1
        yname = ['Test-X[km]']
        ylabel(yname, 'FontSize', 14, 'FontWeight', 'bold');
    end
    
end
filename = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\withValidation\256-4\X-km'];
print('-dpng', filename, '-r150')

figure2 = figure('WindowState','maximized');
for i = 1:10
    subplot(3,10,i)
    plot(Train_y_po(5*i + 53*(i-1), :), 'b--o')
    hold on
    plot(Train_y_po_pred(5*i + 53*(i-1), :), 'r-*')
    yerror = Train_y_po(5*i, :)-Train_y_po_pred(5*i, :);
    y_mae = sum(abs(yerror))/length;
    y_mae = round(y_mae,1);
    titlename = ['MAE=', num2str(y_mae)];
    title(titlename,'FontSize',8,'FontWeight','bold');
    orbit = round(i/2);
    xname = ['Orbit-', num2str(orbit)];
    xlabel(xname, 'FontSize', 14, 'FontWeight', 'bold');
    set(gca,'FontSize',6, 'FontWeight', 'bold');
     if i == 1
        yname = ['Training-Y[km]']
        ylabel(yname, 'FontSize', 14 ,'FontWeight', 'bold');
     end  
    
    subplot(3,10,i+10)
     plot(Y_po(5*i, :), 'k--o')
    hold on
    plot(Y_po_pred(5*i,:), 'g-*')
    yerror = Y_po(5*i, :)-Y_po_pred(5*i, :);
    y_mae = sum(abs(yerror))/length;
    y_mae = round(y_mae,1);
    titlename = ['MAE=', num2str(y_mae)];
    title(titlename,'FontSize',8,'FontWeight','bold');
    orbit = round(i/2);
    xname = ['Orbit-', num2str(orbit)];
    xlabel(xname, 'FontSize', 14, 'FontWeight', 'bold');
    set(gca,'FontSize',6, 'FontWeight', 'bold');
     if i == 1
        yname = ['Validation-Y[km]']
        ylabel(yname, 'FontSize', 14 ,'FontWeight', 'bold');
     end     
    
    subplot(3,10,i+20)
    plot(Y_b_po(5*i, :), 'k--o')
    hold on
    plot(Y_b_po_pred(5*i,:), 'b-*')
    yerror = Y_b_po(5*i, :)-Y_b_po_pred(5*i, :);
    y_mae = sum(abs(yerror))/length;
    y_mae = round(y_mae,1);
    titlename = ['MAE=', num2str(y_mae)];
    title(titlename,'FontSize',8,'FontWeight','bold');
    orbit = round(i/2)+5;
    xname = ['Orbit-', num2str(orbit)];
    xlabel(xname, 'FontSize', 14, 'FontWeight', 'bold');
    set(gca,'FontSize',6, 'FontWeight', 'bold');
     if i == 1
        yname = ['Test-Y[km]']
        ylabel(yname, 'FontSize', 14 ,'FontWeight', 'bold');
     end  
end
filename = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\withValidation\256-4\Y-km'];
print('-dpng', filename, '-r150')

figure3 = figure('WindowState','maximized');
for i = 1:10
    subplot(3,10,i)
    plot(Train_z_po(5*i + 53*(i-1), :), 'k--o')
    hold on
    plot(Train_z_po_pred(5*i + 53*(i-1), :), 'r-*')
    zerror = Train_z_po(5*i, :)-Train_z_po_pred(5*i, :);
    z_mae = sum(abs(zerror))/length;
    z_mae = round(z_mae,1);
    titlename = ['MAE=', num2str(z_mae)];
    title(titlename,'FontSize',8,'FontWeight','bold');
    orbit = round(i/2);
    xname = ['Orbit-', num2str(orbit)];
    xlabel(xname, 'FontSize', 14, 'FontWeight', 'bold');
    set(gca,'FontSize',6, 'FontWeight', 'bold');
     if i == 1
        yname = ['Training-Z[km]']
        ylabel(yname, 'FontSize', 14, 'FontWeight', 'bold');
     end
     
    subplot(3,10,i+10)
    plot(Z_po(5*i, :), 'k--o')
    hold on
    plot(Z_po_pred(5*i,:), 'g-*')
    zerror = Z_po(5*i, :)-Z_po_pred(5*i, :);
    z_mae = sum(abs(zerror))/length;
     z_mae = round(z_mae,1);
    titlename = ['MAE=', num2str(z_mae)];
    title(titlename,'FontSize',8,'FontWeight','bold');
    orbit = round(i/2);
    xname = ['Orbit-', num2str(orbit)];
    xlabel(xname, 'FontSize', 14, 'FontWeight', 'bold');
    set(gca,'FontSize',6, 'FontWeight', 'bold');
     if i == 1
        yname = ['Validation-Z[km]']
        ylabel(yname, 'FontSize', 14, 'FontWeight', 'bold');
     end
    
    subplot(3,10,i+20)
    plot(Z_b_po(5*i, :), 'k--o')
    hold on
    plot(Z_b_po_pred(5*i,:), 'b-*')
    zerror = Z_b_po(5*i, :)-Z_b_po_pred(5*i, :);
    z_mae = sum(abs(zerror))/length;
    z_mae = round(z_mae,1);
    titlename = ['MAE=', num2str(z_mae)];
    title(titlename,'FontSize',8,'FontWeight','bold');
    orbit = round(i/2)+5;
    xname = ['Orbit-', num2str(orbit)];
    xlabel(xname, 'FontSize', 14, 'FontWeight', 'bold');
    set(gca,'FontSize',6, 'FontWeight', 'bold');
     if i == 1
        yname = ['Test-Z[km]']
        ylabel(yname, 'FontSize', 14, 'FontWeight', 'bold');
     end
end

filename = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\withValidation\256-4\Z-km'];
print('-dpng', filename, '-r150')