%% ���ı��ļ��е�������
% ���ڴ������ı��ļ��е������ݵĽű�:
%
%    filename: C:\work\matrix\deposit\D378001.csv
%   Data=ReadMatrixcsv(filename)
function Data= ReadMatrixcsv(filename)
%% ���õ���ѡ��
opts = delimitedTextImportOptions("NumVariables", 2);

% ָ����Χ�ͷָ���
opts.DataLines = [1, Inf];
opts.Delimiter = ",";

% ָ�������ƺ�����
opts.VariableNames = ["Account", "Value"];
opts.VariableTypes = ["string", "double"];
opts = setvaropts(opts, 1, "WhitespaceRule", "preserve");
opts = setvaropts(opts, 1, "EmptyFieldRule", "auto");
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% ��������
Data = readtable(filename, opts);


%% �����ʱ����
clear opts