%% read and check interest
clear;
clc;
close all;
addpath('.\jsonlab-1.9\jsonlab')
%% user definition area
fcsv1="D385201.csv";
fjson1="385199.json";

%% load data
csv=ReadMatrixcsv(fcsv1);

jsontext=fileread(fjson1);
json=jsondecode(jsontext);
json1=loadjson(fjson1);
lenjson=length(json);
str=[];

for i=1:lenjson
    str1=json(i).Address;
    str=char(str,str1);
end