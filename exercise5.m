%function exercise5()
% EXERCISE5   Part 5 of the VGG CNN practical

% while(true)
 
clear
  setup ;  % run once if restart pc

% -------------------------------------------------------------------------
% Part 5.1: load a pretrained model
% -------------------------------------------------------------------------
X = [];
% count = 0;
net = load('imagenet-vgg-verydeep-16.mat') ;
vl_simplenn_display(net) ;
%load('animal_val.mat'); %Change this to whatever name you saved for your image IDs extracted from GTextraction


% -------------------------------------------------------------------------
% Part 5.2: use the model to classify an image
% -------------------------------------------------------------------------

ext = '.jpg';
% 
% for i = 1:length(data)
%     
%     count = count + 1;
%     image=strcat(data{i},ext);
%     disp(image)
%     disp(count)

   %captureTrainingImages('FF','dd',1);
 % the folder in which ur images exists
%srcFiles = dir('C:\Users\sher\Desktop\project\FF\dd\*.jpg');
%for i = 1 : length(srcFiles)
    %filename = strcat('C:\Users\she',srcFiles(i).name);
    I = imread('C:\Koala.jpg');
 %  figure, imshow(I);

    % obtain and preprocess an image
    im = I;
    im_ = single(im) ; % note: 255 range
    im_ = imresize(im_, net.normalization.imageSize(1:2)) ;
    im_ = im_ - net.normalization.averageImage ;

    % run the CNN
    res = vl_simplenn(net, im_) ;
%     X = [X res(33).x(:)];
     X = [ res(33).x(:)];
%end
load('Theta_run2_500iter_0.1lambda.mat');

X = X.';
m = size(X,1);
X = [ones(m, 1) X];
all_theta = all_theta.';
result = sigmoid(X * all_theta);
result = result.';

[value, ids] = max(result);

if (ids==1)
    str = 'Its is a person';
%     msgbox('person');
elseif(ids==2)
     str = 'Its is an animal';
%     msgbox('animal');
elseif (ids==3)
     str = 'Its is a vehicle';
%     msgbox('its a vehicle');
elseif(ids==4)
     str = 'Its is an indoor';
%     msgbox('indoor');
    

end
 
 fig = figure('Name',str,'NumberTitle','on','ToolBar','none');
 ax = axes('Parent',fig);
 imshow(I,'parent',ax);
%   close(fig);

%end

% show the classification result
% scores = squeeze(gather(res(end).x)) ;
% [bestScore, best] = max(scores) ;
% figure(1) ; clf ; imagesc(im) ; axis image ;
% title(sprintf('%s (%d), score %.3f',...
% net.classes.description{best}, best, bestScore)) ;
% dbquit('all');

% end
