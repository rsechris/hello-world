%% Extract rate constants from taumat.
% Don't even try to make sense of the variable names.

shtepo = load('C:\2D\Andy\BRC_Kinetics\16-12-14\10state_P+B-_LLS_4\opt-04-18-01-25-final.mat');
vqe = shtepo.model.params.taumat.val;

list = [4,17,35,49,93,123,153]; % original 8 state model
% listd = [4,19,39,55,105,143,235,173]; % 9 state model
% list = [4,23,47,67,129,171,213,135,297,339,253]; % 11 state model
% list = [4,21,43,61,117,155,193,229,159,269,305]; % 10 state model

clear bumba; % original 8 state model
for i = 1:length(list);
    bumba(i) = vqe(list(i));
end

% clear bumba; % 9 state model
% for i = 1:length(listd);
%     bumba(i) = vqe(listd(i));
% end
