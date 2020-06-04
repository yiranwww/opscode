%% Analysis features
% close all
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\feature_train.mat');
feature_train = double(feature_train);
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\feature_vali.mat');
feature_vali = double(feature_vali);
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\feature_a.mat');
feature_a = double(feature_a);
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\feature_b.mat');
feature_b = double(feature_b);
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\feature_alltrain.mat');
feature_alltrain = double(feature_alltrain);
load('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\feature_all.mat');
feature_all = double(feature_all);
%%
feature_1_train = feature_train(1:331, :);
feature_1_vali = feature_vali(1:10, :);
feature_1_a = feature_a(1:10, :);
feature_1_b = feature_b(1:10, :);

feature_2_train = feature_train(1+331:331+331, :);
feature_2_vali = feature_vali(1+10:10+10, :);
feature_2_a = feature_a(1+10:10+10, :);
feature_2_b = feature_b(1+10:10+10, :);

feature_3_train = feature_train(1+331*2:331+331*2, :);
feature_3_vali = feature_vali(1+10*2:10+10*2, :);
feature_3_a = feature_a(1+10*2:10+10*2, :);
feature_3_b = feature_b(1+10*2:10+10*2, :);

feature_4_train = feature_train(1+331*3: 331+331*3, :);
feature_4_vali = feature_vali(1+10*3:10+10*3, :);
feature_4_a = feature_a(1+10*3: 10+10*3);
feature_4_b = feature_b(1+10*3: 10+10*3, :);

% figure()
% bar3(feature_1_vali, 'b')
% hold on
% bar3(feature_2_vali, 'r')
% bar3(feature_3_vali, 'g')
% bar3(feature_4_vali, 'm')

% legengd('orbir 1', 'orbit 2', 'orbit 3')
figure1 = figure('WindowState','maximized');

h1 = histogram(feature_1_vali)
hold on
h2 = histogram(feature_2_vali)
h3 = histogram(feature_3_vali)
h4 = histogram(feature_4_vali)
% nbins = 25
% h1 = histogram(feature_1_vali, nbins)
% hold on
% h2 = histogram(feature_2_vali, nbins)
% h3 = histogram(feature_3_vali, nbins)
% h4 = histogram(feature_4_vali, nbins)
h1.Normalization = 'probability';
h2.Normalization = 'probability';
h3.Normalization = 'probability';
h4.Normalization = 'probability';
binwidth = 0.10
h1.BinWidth = binwidth;
h2.BinWidth = binwidth;
h3.BinWidth = binwidth;
h4.BinWidth = binwidth;
title({'Validation'}, 'FontSize', 30)
legend({'orbit 1', 'orbit 2', 'orbit 3', 'orbit 4'}, 'FontSize', 25)
filename = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\WithSection\featureAnalysis\feature20\validationcompare'];
print('-dpng', filename, '-r150')
%%
figure2 = figure('WindowState','maximized');
h1 = histogram(feature_1_b, 20)
hold on
h2 = histogram(feature_2_b, 20)
h3 = histogram(feature_3_b, 20)
h4 = histogram(feature_4_b, 20)
binwidth = 0.10
h1.BinWidth = binwidth;
h2.BinWidth = binwidth;
h3.BinWidth = binwidth;
h4.BinWidth = binwidth;
h1.Normalization = 'probability';
h2.Normalization = 'probability';
h3.Normalization = 'probability';
h4.Normalization = 'probability';
title({'Test B'}, 'FontSize', 30)
legend({'orbit 6', 'orbit 7', 'orbit 8', 'orbit 9'}, 'FontSize', 25)
filename = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\WithSection\featureAnalysis\feature20\testBcompare'];
print('-dpng', filename, '-r150')

figure3 = figure('WindowState','maximized');
h1 = histogram(feature_1_vali)
hold on
h2 = histogram(feature_1_a)
h3 = histogram(feature_1_b)
binwidth = 0.10
h1.BinWidth = binwidth;
h2.BinWidth = binwidth;
h3.BinWidth = binwidth;
h1.Normalization = 'probability';
h2.Normalization = 'probability';
h3.Normalization = 'probability';
title({'Orbit 1 and orbit 6'}, 'FontSize', 30)
legend({'orbit 1 Validation', 'orbit 1 Test', 'orbit 6 test'}, 'FontSize', 25)
filename = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\WithSection\featureAnalysis\feature20\orbit1compare'];
print('-dpng', filename, '-r150')

%% Show the sample on each neuron
% 看一个sample上的featurevalue
x = 1:10;
y = 1:20;
[X, Y] = meshgrid(1:10, 1:20);
figure4 =  figure('WindowState','maximized');
plot3(X,Y,feature_1_a, 'r-o');
hold on
plot3(X,Y,feature_2_a, 'g-*');
% plot3(X,Y,feature_3_a, 'b-^');
grid on
xlabel('track index', 'FontSize', 25)
ylabel('fecture component', 'FontSize', 25)
zlabel('feature value', 'FontSize', 25)
title('Test A', 'FontSize', 30)
filename = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\WithSection\featureAnalysis\feature20\orbit1_vali_and_testA'];
print('-dpng', filename, '-r150')
%% show the features by each sample 
% 看每一个feature 在一个sample上的值
[X, Y] = meshgrid(1:10, 1:20);
figure5 =  figure('WindowState','maximized');
plot3(X,Y,feature_1_a', 'g-o');
hold on
plot3(X,Y,feature_1_vali', 'm-*');
% plot3(X,Y,feature_1_b', 'b-^');
grid on
ylabel('track index', 'FontSize', 25)
xlabel('fecture component', 'FontSize', 25)
zlabel('feature value', 'FontSize', 25)
legend('Test a', 'Validation', 'Test b')
title('Orbit 1', 'FontSize', 30)
filename = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\WithSection\featureAnalysis\feature20\orbit1_feature_on_each_sample'];
print('-dpng', filename, '-r150')
%% show the 20 features with 10 samples
x = 1:10;
y = 1:20;
figure6 =  figure('WindowState','maximized');
for i = 1:20
        z1 = feature_1_vali(:, i);
        z2 = feature_1_a(:,i);
        z3 = feature_1_b(:, i);
        subplot(4,5,i)
        plot(x, z1, 'm-o');
        hold on
        plot(x, z2,'g-*');
        plot(x, z3, 'b-*');
        xlabel('track index')

end
filename = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\WithSection\featureAnalysis\feature20\orbit1_pinkVali_greentesta_bluetestb'];
print('-dpng', filename, '-r150')
%%
figure7 =  figure('WindowState','maximized');
x = [1:1755]';
for i = 1:20
        z1 = feature_alltrain(:, i);
        subplot(4,5,i)
        plot(x, z1, 'b-o');
        zmax = max(z1);
        zmin = min(z1)
        hold on
        plot([351, 351],[zmax, zmin], 'm--', 'linewidth', 1.5)
        plot([351*2, 351*2],[zmax, zmin], 'm--', 'linewidth', 1.5)
        plot([351*3, 351*3],[zmax, zmin], 'm--', 'linewidth', 1.5)
        plot([351*4, 351*4],[zmax, zmin], 'm--', 'linewidth', 1.5)
        plot([351*5, 351*5],[zmax, zmin], 'm--', 'linewidth', 1.5)
        xlabel('track index')

end
filename = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\WithSection\featureAnalysis\feature20\train_feature'];
print('-dpng', filename, '-r150')
%%
figure8 =  figure('WindowState','maximized');
x = [1:3504];
for i = 1:20
        z1 = feature_all(:, i);
        subplot(4,5,i)
        plot(x, z1, 'b-o');
        zmax = max(z1);
        zmin = min(z1);
        hold on
        plot([351, 351],[zmax, zmin], 'm--', 'linewidth', 1.5)
        plot([351*2, 351*2],[zmax, zmin], 'm--', 'linewidth', 1.5)
        plot([351*3, 351*3],[zmax, zmin], 'm--', 'linewidth', 1.5)
        plot([351*4, 351*4],[zmax, zmin], 'm--', 'linewidth', 1.5)
        plot([351*5, 351*5],[zmax, zmin], 'y--', 'linewidth', 1.5)
        plot([351*6, 351*6],[zmax, zmin], 'y--', 'linewidth', 1.5)
        plot([351*7, 351*7],[zmax, zmin], 'y--', 'linewidth', 1.5)
        plot([351*8, 351*8],[zmax, zmin], 'y--', 'linewidth', 1.5)
        plot([351*9, 351*9],[zmax, zmin], 'y--', 'linewidth', 1.5)
%         plot([351*10, 351*10],[zmax, zmin], 'y--', 'linewidth', 1.5)
        xlabel('track index')

end
filename = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\WithSection\featureAnalysis\feature20\all_feature'];
print('-dpng', filename, '-r150')
savefig(filename)
% %% 求feature平方和
% vali_1 = feature_1_vali(1,:);
% sum_vali_1 =sum( vali_1.^2);
% vali_2 = feature_1_vali(2,:);
% sum_vali_2 = sum( vali_2.^2);

%%

save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\SavedFigure\WithSection\featureAnalysis\feature20\featureanalysis.mat')



