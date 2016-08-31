
load('def_BusObject.mat');
load config_cosim.mat;
%---
if isempty(ActionBusObject)
    load('BusObjectsForDC.mat');
end

%% 
% pos_rdr_ini = [40.959054;100.292301;1000];  % LLH of Jiuquan, unit: degree[N] degree[E] meter
pos_rdr_ini = [100.292301;40.959054;1000];  % Longtitute Latitute height of Jiuquan, unit: degree[N] degree[E] meter
phi_rdr_ini = 0; % Orientation, degree 

%% struct initialization using bus object 
one_tgt = Simulink.Bus.createMATLABStruct('bus_trj_tgt');
que_tgt_48(1:48) = one_tgt;
que_tgt_100(1:100) = one_tgt;


one_new_tgt = Simulink.Bus.createMATLABStruct('bus_new_tgt');
one_pcs_tgt = Simulink.Bus.createMATLABStruct('bus_pcs_tgt');


%% set data for system simulation
ini_timeNum_sys = now; % get current clock of scalar form
ini_timeVec_sys = datevec(ini_timeNum_sys); 


%% set data for radar
phi_FR = 0; % Orientation of FSC to LD, degree 

% %% set data for FSC
% pos_FSC_ini(1) = [100.292301;40.959054;1000]-[0.0001;0;0];  % Longtitute Latitute height of Jiuquan, unit: degree[N] degree[E] meter
% pos_FSC_ini(2) = [100.292301;40.959054;1000]+[0.0001;0;20];
% pos_FSC_ini(3) = [100.292301;40.959054;1000]-[0;0.0001;0];
% pos_FSC_ini(4) = [100.292301;40.959054;1000]+[0;0.0001;-20];
