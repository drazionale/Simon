%url='https://haleyk.github.io/circle.png';
%in_img = url;
%filename ='circle.png';
%outfilename = websave(filename,url);
%%%%%%%%%%%% loads a circle image that acts as the base for the game board
img=imread('circle.png');

for i=1:250                                     
    for j= 1:250
        if img(i,j,2)== 255                    %changes bkgrnd to black
            img(i,j,:)=[0 0 0];    
        end
    end
end
simon_board=img;
for i=1:250       %set quadrants of circle to correct colors     
    for j= 1:250
        if img(i,j,2)== 0 && img(i,j,1)== 255
            if i <=125 && j<125
                simon_board(i,j,:)= [150 255 150];
            elseif i >125 && j<125
                simon_board(i,j,:)= [255 255 0];
            elseif i>121 && j>120
                    simon_board(i,j,:)= [0 0 255];
            end
        end
    end
end

for i=50:100         %creates a black central shape (currently square)            
    for j= 100:150
        if img(i,j,1)== 255                    
            simon_board(i+50,j,:)=[0 0 0];    
        end
    end
end

for i= 125:250 %horizontal crosshairs
    for j= 0:5
simon_board(122+j,i,:)= [0 0 0];
    end
end

for i= 125:250 %vertical crosshairs
    for j= 0:5
simon_board(i,122+j,:)= [0 0 0];
    end
end

%%%prints "simon" in the center of the game board
text="simon";
position= [125 125];
simon_board= insertText(simon_board,position,text,anchorpoint="Center",Boxcolor="black",textcolor="white");

imagesc(simon_board)
axis image; %omits axes
axis off;
imwrite(simon_board,"green.jpg")
