% DDϵͳ����
g = 9.801; % �������ٶ�
Is = 2156;  % �ȳ�ֵ
rou = 1.2495;% �����ܶ�
S = 200;  %�����Ĳο����
Cx = 0.6; %����ϵ��
N = 2; % ������
% DR  %��Ŀ��Ծ���仯��
% DDqe %��Ŀ���߸����Ǳ仯��
% Dqe %��Ŀ���߸�����
% DDqb %��Ŀ���߷�λ�Ǳ仯��

% ״̬��ʼֵ
Init_m = 500; % ������ʼֵ
Init_theta = 4; % theta��ʼֵ
Init_Vm = 4;   % Vm��ʼֵ
Init_psi = 1;  %psi��ʼֵ
Init_R = 2000; % ϵͳ��Ŀ����Ծ���R��ʼֵ
Init_epsi = 2; %��λ��epsilon��ʼֵ
Init_beta = 2; % ������beta��ʼֵ
Init_Xm = 100; % Dϵͳλ��Xm��ʼֵ
Init_Ym = 100; % Dϵͳλ��Ym��ʼֵ
Init_Zm = 100; % Dϵͳλ��Zm��ʼֵ

t = [0:0.1:10]';
DM = -0.001*ones(length(t),1);
Vt = 0.1*ones(length(t),1);
psi_t = 0.1*ones(length(t),1);
theta_t = 0.3*ones(length(t),1);