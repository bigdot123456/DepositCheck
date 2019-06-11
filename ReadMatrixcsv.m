%% 从文本文件中导入数据
% 用于从以下文本文件中导入数据的脚本:
%
%    filename: C:\work\matrix\deposit\D378001.csv
%   Data=ReadMatrixcsv(filename)
function Data= ReadMatrixcsv(filename)
%% 设置导入选项
opts = delimitedTextImportOptions("NumVariables", 2);

% 指定范围和分隔符
opts.DataLines = [1, Inf];
opts.Delimiter = ",";

% 指定列名称和类型
opts.VariableNames = ["Account", "Value"];
opts.VariableTypes = ["string", "double"];
opts = setvaropts(opts, 1, "WhitespaceRule", "preserve");
opts = setvaropts(opts, 1, "EmptyFieldRule", "auto");
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% 导入数据
Data = readtable(filename, opts);


%% 清除临时变量
clear opts