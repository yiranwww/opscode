%% diff with time
clear size
clear
load('D:\ops\result_3\results-20200317\pre_data.mat')

%% orbit 6

time_point = measures(:,2);
t1 =141;
t2 = 168;
n1 = find(measures(:,2)<(t1*86400));
n2 = find(measures(:,2)<(t2*86400));
n1 = size(n1); 
n2 = size(n2); 
n2 = n2(1);n1 = n1(1);
tt = time_point(n1:n2,:);
y=diff(tt);
% dataneed = measures(n1:n2,:);
k = find(y>15);
n2 = n2(1);n1 = n1(1);
n = n2 - n1;
m = size(k);
m = m(1);
% Measure = measures(:,[3:5]); % azimuth, elevation and range
Measure = measures(:,[18:20]); % reconstructed position with azimuth, elevation and range
UseData1 = Measure(1:k(1),:);
length = 30
element = 3;
%% prepare the training part
for i = 2:m
   eval(['UseData',num2str(i), '=' 'Measure((k(i-1)+n1):(k(i)+n1-1),:)', ';']) 
    size(i)=k(i)-k(i-1);
   if size(i) > length
    variable = eval(['UseData', num2str(i)]);

%     azi = variable(:,1);
%     azi_diff = diff(azi);
%     if find(abs(azi_diff) >180)
%         variable = zeros(size(i), element);
%     end
    mid = round(size(i)/2);
    len = length/2;
    variable = variable(mid-len+1:mid+len,:);
    tensor(i, :, :) = variable;
    UseData = variable';
    UseData = UseData(:);
    name = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_6\TrainData', num2str(i), '.mat'];
        save(name, 'UseData')
        
         variable = ['D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_6\TrainData', num2str(i), '.mat'];
      X = load(variable);
      A = X.UseData;
      DataAll(i,:)=A;

   else
   end
   
end

%%
DataAll (all(DataAll == 0, 2),:) = [];
clear size
n = size(DataAll)
p = n(1);
q = n(2);
q = q/length;
vari = DataAll;
MappedX=[];
for i = 1:p
    for j = 1:length
       x_po(i,j) = DataAll(i, 1 + 3*(j-1)); 
       y_po(i,j) = DataAll(i, 2 + 3*(j-1));
       z_po(i,j) = DataAll(i, 3 + 3*(j-1));
    end
%     MappedX(i,:) = (x_po(i,:) - min(x_po(i,:))) / ( max(x_po(i,:)) - min(x_po(i,:)));
%     MappedY(i,:) = (y_po(i,:) - min(y_po(i,:))) / ( max(y_po(i,:)) - min(y_po(i,:)));
%     MappedZ(i,:) = (z_po(i,:) - min(z_po(i,:))) / ( max(z_po(i,:)) - min(z_po(i,:)));
end
save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\TrainData\orbit_6\Data_orbit_6.mat', 'x_po', 'y_po', 'z_po');
a=-1; % lower
b=1; % higher
xall = x_po';
xall = xall(:);
Xmax=max(xall);%计算最大值
Xmin=min(xall);%计算最小值
kx=(b-a)./(Xmax-Xmin);
norX=a+kx*(x_po-Xmin);

yall = y_po';
yall = yall(:);
Ymax=max(yall);
Ymin=min(yall);
ky=(b-a)./(Ymax-Ymin);
norY=a+ky*(y_po-Ymin);

zall = z_po';
zall = zall(:);
Zmax=max(zall);%计算最大值
Zmin=min(zall);%计算最小值
kz=(b-a)./(Zmax-Zmin);
norZ=a+kz*(z_po-Zmin);

% MappedX=(x_po - min(x_po)) ./ ( max(x_po) - min(x_po));
% MappedY=(y_po - min(y_po)) ./ ( max(y_po) - min(y_po));
% MappedZ=(z_po - min(z_po)) ./ ( max(z_po) - min(z_po));
% min_x_train = min(x_po); max_x_train = max(x_po);
% min_y_train = min(y_po); max_y_train = max(y_po);
% min_z_train = min(z_po); max_z_train = max(z_po);

%        [Z_x_po,mean_x_po,std_x_po] = zscore(x_po);
%          [Z_y_po, mean_y_po, std_y_po] = zscore(y_po);
%      [Z_z_po, mean_z_po, std_z_po] = zscore(z_po);

 %%    
for i = 1:p
    for j = 1:length
        Norm_DataAll(i, 1+3*(j-1)) = norX(i,j);
        Norm_DataAll(i, 2+3*(j-1)) = norY(i,j);
        Norm_DataAll(i, 3+3*(j-1)) = norZ(i,j);
    end
end
   save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\CollectTrainData\norm_data_orbit_6.mat',...
     ...  'Z_x_po', 'mean_x_po', 'std_x_po', 'Z_y_po', 'mean_y_po','std_y_po', 'Z_z_po', 'mean_z_po', 'std_z_po', ...
     ... 'min_x_train', 'max_x_train', 'min_y_train', 'max_y_train', 'min_z_train', 'max_z_train',...
      'Xmin', 'Xmax', 'Ymin', 'Ymax', 'Zmin', 'Zmax', 'kx', 'ky', 'kz', 'a', 'b');
 csvwrite('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\CollectTrainData\result3_train_orbit_6.csv', DataAll);
 csvwrite('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\CollectTrainData\Normalized_result3_train_orbit_6.csv', Norm_DataAll);

 %%
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
save('D:\ops\result_3\results-20200317\LSTM_MultiOrbits\CollectTrainData\Tensor_train_orbit_6.mat', 'new_tensor');
