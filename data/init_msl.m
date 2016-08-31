% DD系统输入
g = 9.801; % 重力加速度
Is = 2156;  % 比冲值
rou = 1.2495;% 空气密度
S = 200;  %导弹的参考面积
Cx = 0.6; %阻力系数
N = 2; % 导航比
% DR  %弹目相对距离变化率
% DDqe %弹目视线俯仰角变化率
% Dqe %弹目视线俯仰角
% DDqb %弹目视线方位角变化率

% 状态初始值
Init_m = 500; % 重量初始值
Init_theta = 4; % theta初始值
Init_Vm = 4;   % Vm初始值
Init_psi = 1;  %psi初始值
Init_R = 2000; % 系统距目标相对距离R初始值
Init_epsi = 2; %方位角epsilon初始值
Init_beta = 2; % 俯仰角beta初始值
Init_Xm = 100; % D系统位置Xm初始值
Init_Ym = 100; % D系统位置Ym初始值
Init_Zm = 100; % D系统位置Zm初始值

t = [0:0.1:10]';
DM = -0.001*ones(length(t),1);
Vt = 0.1*ones(length(t),1);
psi_t = 0.1*ones(length(t),1);
theta_t = 0.3*ones(length(t),1);