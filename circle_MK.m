url='https://haleyk.github.io/circle.png';
in_img = url;
filename ='circle.png';
outfilename = websave(filename,url);

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

for i=1:500
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

for i=500:1000
    for j=500:1000
        if red_color(i,j)==1
            new_circle(i,j,1)=0;
            new_circle(i,j,2)=0;
            new_circle(i,j,3)=255;
        else
            continue
        end
    end
end

for i=1:500
    for j=500:1000
        if red_color(i,j)==1
            new_circle(i,j,1)=0;
            new_circle(i,j,2)=255;
            new_circle(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000
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

background=newA(:,:,1)==255 & newA(:,:,2)==255 & newA(:,:,3)==255;

for i=1:250
    for j=1:250
        if background(i,j)==1
            new_circle(i,j,1)=0;
            new_circle(i,j,2)=0;
            new_circle(i,j,3)=0;
        else
            continue
        end
    end
end

subplot(1,2,1) 
imagesc(newA);
axis image;
axis off;
subplot(1,2,2)
imagesc(new_circle);
axis image;
axis off;