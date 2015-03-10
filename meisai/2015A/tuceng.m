a=imread('./zaiqu1.jpg');
b=imread('./jiuzhu1.jpg');
% size(a)
% a=rgb2gray(a);
% b=rgb2gray(b);
% for i=1:664
%     for j=1:704
%         if a(i,j)<255
%             a(i,j)=0;
%         end
%     end
% end

imtool(a*0.5+b*0.5)