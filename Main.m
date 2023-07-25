
clear
clc

%   load data.mat

%  load chain_full.mat
%  data = chain_full;

% load twospirals_data.mat
% data = twospirals_data;
% data(1:1000,3) = 1;
% data(1001:2000,3) = 2;

%data = [5 6 2 4; 3 4 1 2;1 1 2 2]';

load bupa.mat
data = bupa;

Particle = 20;
Iteration = 100;
Lower_Limit = -1;
Upper_Limit = 1;
w = 0.8;
c1 = 2.1;
c2 = 1.9;
p=0.8;

A=1;            % Initial loudness (constant or decreasing)
r0=1;           % The initial pulse rate (constant or decreasing)
alpha=0.97;     % Parameter alpha
gamma=0.1;      % Parameter gamma

ElitistCheck=1; 
Rpower=1;
min_flag=1; % 1: minimization, 0: maximization
 

% [Weights,P_Best_Orginal,Fitness,P_Best_Weights,P_Best,PBest_All,Weighted_Data] = weightedwithPSO(data,Iteration,Particle,Lower_Limit,Upper_Limit,w,c1,c2);
% [P_Best_Weights,P_Best,PBest_All,Weighted_Data] = fpa_demo(data,Iteration,Particle,p);
%[PBest_Weights,PBest,PBest_All,Weighted_Data] = bat_alg(data,Iteration,Particle,A,r0,alpha,gamma);
[PBest_Weights,PBest,PBest_All,Weighted_Data]=GSA(data,Particle,Iteration,ElitistCheck,min_flag,Rpower,Lower_Limit,Upper_Limit);

%Data_weighted = [(data(:,1:end-1) .* P_Best_Weights) data(:,end)];

figure
plot(PBest_All)
% hold on
% stem(P_Best_Orginal,'filled','LineStyle','None')
% hold off

%% Iris

%     figure
%     hold on
%     grid on
%     view([50 25])
%     set(gca,'XMinorGrid','on');
%     set(gca,'YMinorGrid','on');
%     set(gca,'ZMinorGrid','on');
%     scatter3(data(1:50,1),data(1:50,2),data(1:50,3),'b','o')
%     scatter3(data(51:100,1),data(51:100,2),data(51:100,3),'r','+')
%     scatter3(data(101:150,1),data(101:150,2),data(101:150,3),'g','*')
%     hold off
    
%     figure
%     hold on
%     grid on
%     view([50 25])
%     set(gca,'XMinorGrid','on');
%     set(gca,'YMinorGrid','on');
%     set(gca,'ZMinorGrid','on');
%     scatter3(Weighted_Data(1:50,1),Weighted_Data(1:50,2),Weighted_Data(1:50,3),'b','o')
%     scatter3(Weighted_Data(51:100,1),Weighted_Data(51:100,2),Weighted_Data(51:100,3),'r','+')
%     scatter3(Weighted_Data(101:150,1),Weighted_Data(101:150,2),Weighted_Data(101:150,3),'g','*')
%     hold off

%% Full Chain
%     figure
%     hold on
%     grid on
%     view([50 25])
%     set(gca,'XMinorGrid','on');
%     set(gca,'YMinorGrid','on');
%     set(gca,'ZMinorGrid','on');
%     scatter3(data(1:500,1),data(1:500,2),data(1:500,3),'b','o')
%     scatter3(data(501:1000,1),data(501:1000,2),data(501:1000,3),'r','+')
%     hold off
%     
%     figure
%     hold on
%     grid on
%     view([50 25])
%     set(gca,'XMinorGrid','on');
%     set(gca,'YMinorGrid','on');
%     set(gca,'ZMinorGrid','on');
%     scatter3(Weighted_Data(1:500,1),Weighted_Data(1:500,2),Weighted_Data(1:500,3),'b','o')
%     scatter3(Weighted_Data(501:1000,1),Weighted_Data(501:1000,2),Weighted_Data(501:1000,3),'r','+')
%     hold off

%% Two Spirals
%     figure
%     hold on
%     grid on
%     set(gca,'XMinorGrid','on');
%     set(gca,'YMinorGrid','on');
%     set(gca,'ZMinorGrid','on');
%     scatter(data(1:1000,1),data(1:1000,2),'b','o')
%     scatter(data(1001:2000,1),data(1001:2000,2),'r','+')
%     hold off
    
%     figure
%     hold on
%     grid on
%     set(gca,'XMinorGrid','on');
%     set(gca,'YMinorGrid','on');
%     set(gca,'ZMinorGrid','on');
%     scatter(Weighted_Data(1:1000,1),Weighted_Data(1:1000,2),'b','o')
%     scatter(Weighted_Data(1001:2000,1),Weighted_Data(1001:2000,2),'r','+')
%     hold off

%% 4'lü data
%     figure
%     hold on
%     grid on
%     set(gca,'XMinorGrid','on');
%     set(gca,'YMinorGrid','on');
%     set(gca,'ZMinorGrid','on');
%     scatter(data(1:2,1),data(1:2,2),'b','o')
%     scatter(data(3:4,1),data(3:4,2),'r','+')
%     hold off
%     
%     figure
%     hold on
%     grid on
%     set(gca,'XMinorGrid','on');
%     set(gca,'YMinorGrid','on');
%     set(gca,'ZMinorGrid','on');
%     scatter(Weighted_Data(1:2,1),Weighted_Data(1:2,2),'b','o')
%     scatter(Weighted_Data(3:4,1),Weighted_Data(3:4,2),'r','+')
%     hold off

%% BUPA
%     figure
%     hold on
%     grid on
%     view([50 25])
%     set(gca,'XMinorGrid','on');
%     set(gca,'YMinorGrid','on');
%     set(gca,'ZMinorGrid','on');
%     scatter3(data(1:145,1),data(1:145,2),data(1:145,3),'b','o')
%     scatter3(data(146:345,1),data(146:345,2),data(146:345,3),'r','+')
%     hold off
%     
    figure
    hold on
    grid on
    view([50 25])
    set(gca,'XMinorGrid','on');
    set(gca,'YMinorGrid','on');
    set(gca,'ZMinorGrid','on');
    scatter3(Weighted_Data(1:145,1),Weighted_Data(1:145,2),Weighted_Data(1:145,3),'b','o')
    scatter3(Weighted_Data(146:345,1),Weighted_Data(146:345,2),Weighted_Data(146:345,3),'r','+')
    hold off