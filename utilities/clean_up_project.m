% function clean_up_project()
%clean_up_project   Clean up local customizations of the environment
% 
%   Clean up the environment for the current project. This function undoes
%   the settings applied in "set_up_project". It is set to Run at Shutdown.

%   Copyright 2011-2014 The MathWorks, Inc.

% Reset the location where generated code and other temporary files are
% created (slprj) to the default:
Simulink.fileGenControl('reset');

%% Remove folders from MATLAB path
result = textscan(matlabpath,'%s','delimiter',pathsep);
pathEl = result{1};
bybye=find(strncmp(pwd,pathEl,length(pwd)));
if ~isempty(bybye)
    disp('Clearing the MATLAB path of all directories from demo root downwards...')
    rmpath(pathEl{bybye});
    disp([num2str(length(bybye)),' entries removed from the path.'])
end
%%
bdclose all;
clear all;
clc;

% end
