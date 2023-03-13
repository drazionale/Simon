url='https://haleyk.github.io/circle.png';
in_img = url;
filename ='circle.png';
outfilename = websave(filename,url);

%% set-up of the default circle
org_circle=imread(outfilename);
A=org_circle;
imagesc(org_circle);
magnificationFactor=2;
newA=imresize(A,[1000,1000]);
axis image;
axis off;
[m,n,o]=size(newA);

red_color=newA(:,:,1)==255 & newA(:,:,2)==0 & newA(:,:,3)==0;

new_circle=newA;

for i=1:500 %%red
    for j=1:500
        if red_color(i,j)==1
            new_circle(i,j,1)=175;
            new_circle(i,j,2)=0;
            new_circle(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000 %% blue
    for j=500:1000
        if red_color(i,j)==1
            new_circle(i,j,1)=0;
            new_circle(i,j,2)=0;
            new_circle(i,j,3)=175;
        else
            continue
        end
    end
end

for i=1:500  %% green
    for j=500:1000
        if red_color(i,j)==1
            new_circle(i,j,1)=0;
            new_circle(i,j,2)=175;
            new_circle(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000  %% yellow
    for j=1:500
        if red_color(i,j)==1
            new_circle(i,j,1)=175;
            new_circle(i,j,2)=175;
            new_circle(i,j,3)=0;
        else
            continue
        end
    end
end

%% set-up of the background color:
background=newA(:,:,1)==255 & newA(:,:,2)==255 & newA(:,:,3)==255;

for i=1:1000
    for j=1:1000
        if background(i,j)==1
            new_circle(i,j,1)=0;
            new_circle(i,j,2)=0;
            new_circle(i,j,3)=0;
        else
            continue
        end
    end
end

B=new_circle

%% lite-up red:

for i=1:500 %%red
    for j=1:500
        if red_color(i,j)==1
            new_circle(i,j,1)=255;
            new_circle(i,j,2)=0;
            new_circle(i,j,3)=0;
        else
            continue
        end
    end
end

liteRed=new_circle;

%% lite-up blue:

for i=1:500 %%blue
    for j=1:500
        if red_color(i,j)==1
            new_circle(i,j,1)=0;
            new_circle(i,j,2)=0;
            new_circle(i,j,3)=255;
        else
            continue
        end
    end
end

liteBlue=new_circle;

%% lite-up green:

for i=1:500 %%green
    for j=1:500
        if red_color(i,j)==1
            new_circle(i,j,1)=0;
            new_circle(i,j,2)=255;
            new_circle(i,j,3)=0;
        else
            continue
        end
    end
end

liteGreen=new_circle;

%% lite-up yellow:

for i=1:500 %%yellow
    for j=1:500
        if red_color(i,j)==1
            new_circle(i,j,1)=255;
            new_circle(i,j,2)=255;
            new_circle(i,j,3)=0;
        else
            continue
        end
    end
end

liteYellow=new_circle;

%% set-up of middle square for all images created above:
B(400:600,400:600,1)=255;
B(400:600,400:600,2)=255;
B(400:600,400:600,3)=255;

%% plotting all of the images
subplot(3,2,1) 
imagesc(newA);
axis image;
axis off;
subplot(3,2,2)
imagesc(new_circle);
axis image;
axis off;

subplot(3,2,3)
imagesc(liteRed)
axis image;
axis off;

subplot(3,2,4)
imagesc(liteBlue)
axis image;
axis off;

subplot(3,2,5)
imagesc(liteGreen)
axis image;
axis off;

subplot(3,2,6)
imagesc(liteYellow)
axis image;
axis off;

%% default green color = (0,175,0)
%% lighter green color = (0, 255, 0)
%% default red color = (175, 0, 0)
%% lighter red color = (255, 0, 0)
%% default yellow color = (175, 175, 0)
%% lighter yellow color = (255, 255, 0)
%% default blue color = (0, 0, 175)
%% lighter blue color = (0, 0, 255)