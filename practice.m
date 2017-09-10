figure;
%i= imread('C:\Users\sher\Desktop\project\FF\dd\image1.jpg');
%imshow(i);
% adding a label on figure while imshow look more professional
pb = uicontrol('String','Close','Style','pushbutton','Callback',@pushbutton1_Callback);
r = uicontrol('Style','pushbutton','String','next','Value',1,'Position',[700 20 50 20],'Callback',@pushbutton2_Callback);