% srcFiles = dir('E:\New Folder\*.tif');  % the folder in which ur images exists
% srcFiles = dir('C:\Users\sher\Desktop\project\FF\dd\*.jpg');
% for i = 1 : length(srcFiles)
%     filename = strcat('C:\Users\sher\Desktop\project\FF\dd\',srcFiles(i).name);
%     I = imread(filename);
%  %  figure, imshow(I);
% end
clear
i = imread('C:\Users\sher\Desktop\project\FF\dd\image1.jpg');
title = 'its a person';
 fig = figure('Name','Its a dog','NumberTitle','on','ToolBar','none');
ax = axes('Parent',fig);
 imshow(i,'parent',ax);
