url='https://haleyk.github.io/circle.png';
in_img = url;
filename ='circle.png';
outfilename = websave(filename,url);

%% set-up of the default circle
A=imread(outfilename);
imagesc(A);
magnificationFactor=2;
A=imresize(A,[1000,1000]);
axis image;
axis off;
[m,n,o]=size(A);

color=A(:,:,1)==255 & A(:,:,2)==0 & A(:,:,3)==0;

for i=1:500 %%red
    for j=1:500
        if color(i,j)==1
            A(i,j,1)=175;
            A(i,j,2)=0;
            A(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000 %% blue
    for j=500:1000
        if color(i,j)==1
            A(i,j,1)=0;
            A(i,j,2)=0;
            A(i,j,3)=175;
        else
            continue
        end
    end
end

for i=1:500  %% green
    for j=500:1000
        if color(i,j)==1
            A(i,j,1)=0;
            A(i,j,2)=175;
            A(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000  %% yellow
    for j=1:500
        if color(i,j)==1
            A(i,j,1)=175;
            A(i,j,2)=175;
            A(i,j,3)=0;
        else
            continue
        end
    end
end

%% set-up of the background color:
background=A(:,:,1)==255 & A(:,:,2)==255 & A(:,:,3)==255;

for i=1:1000
    for j=1:1000
        if background(i,j)==1
            A(i,j,1)=0;
            A(i,j,2)=0;
            A(i,j,3)=0;
        else
            continue
        end
    end
end

%% set-up of middle square for image created above:
A(400:600,400:600,1)=0;
A(400:600,400:600,2)=0;
A(400:600,400:600,3)=0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% lite-red
B=imread(outfilename);
imagesc(B);
magnificationFactor=2;
B=imresize(B,[1000,1000]);
axis image;
axis off;
[m,n,o]=size(B);

Rcolor=B(:,:,1)==255 & B(:,:,2)==0 & B(:,:,3)==0;

for i=1:500 %%red
    for j=1:500
        if Rcolor(i,j)==1
            B(i,j,1)=255;
            B(i,j,2)=0;
            B(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000 %% blue
    for j=500:1000
        if Rcolor(i,j)==1
            B(i,j,1)=0;
            B(i,j,2)=0;
            B(i,j,3)=175;
        else
            continue
        end
    end
end

for i=1:500  %% green
    for j=500:1000
        if Rcolor(i,j)==1
            B(i,j,1)=0;
            B(i,j,2)=175;
            B(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000  %% yellow
    for j=1:500
        if Rcolor(i,j)==1
            B(i,j,1)=175;
            B(i,j,2)=175;
            B(i,j,3)=0;
        else
            continue
        end
    end
end

%% set-up of the background color:
background=B(:,:,1)==255 & B(:,:,2)==255 & B(:,:,3)==255;

for i=1:1000
    for j=1:1000
        if background(i,j)==1
            B(i,j,1)=0;
            B(i,j,2)=0;
            B(i,j,3)=0;
        else
            continue
        end
    end
end

%% set-up of middle square for image created above:
B(400:600,400:600,1)=0;
B(400:600,400:600,2)=0;
B(400:600,400:600,3)=0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% lite-blue
C=imread(outfilename);
imagesc(C);
magnificationFactor=2;
C=imresize(C,[1000,1000]);
axis image;
axis off;
[m,n,o]=size(B);

Bcolor=C(:,:,1)==255 & C(:,:,2)==0 & C(:,:,3)==0;

for i=1:500 %%red
    for j=1:500
        if Bcolor(i,j)==1
            C(i,j,1)=255;
            C(i,j,2)=0;
            C(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000 %% blue
    for j=500:1000
        if Bcolor(i,j)==1
            C(i,j,1)=0;
            C(i,j,2)=0;
            C(i,j,3)=255;
        else
            continue
        end
    end
end

for i=1:500  %% green
    for j=500:1000
        if Bcolor(i,j)==1
            C(i,j,1)=0;
            C(i,j,2)=175;
            C(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000  %% yellow
    for j=1:500
        if Bcolor(i,j)==1
            C(i,j,1)=175;
            C(i,j,2)=175;
            C(i,j,3)=0;
        else
            continue
        end
    end
end

%% set-up of the background color:
background=C(:,:,1)==255 & C(:,:,2)==255 & C(:,:,3)==255;

for i=1:1000
    for j=1:1000
        if background(i,j)==1
            C(i,j,1)=0;
            C(i,j,2)=0;
            C(i,j,3)=0;
        else
            continue
        end
    end
end

%% set-up of middle square for image created above:
C(400:600,400:600,1)=0;
C(400:600,400:600,2)=0;
C(400:600,400:600,3)=0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% lite-green
D=imread(outfilename);
imagesc(D);
magnificationFactor=2;
D=imresize(D,[1000,1000]);
axis image;
axis off;
[m,n,o]=size(D);

Gcolor=D(:,:,1)==255 & D(:,:,2)==0 & D(:,:,3)==0;

for i=1:500 %%red
    for j=1:500
        if Gcolor(i,j)==1
            D(i,j,1)=255;
            D(i,j,2)=0;
            D(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000 %% blue
    for j=500:1000
        if Gcolor(i,j)==1
            D(i,j,1)=0;
            D(i,j,2)=0;
            D(i,j,3)=175;
        else
            continue
        end
    end
end

for i=1:500  %% green
    for j=500:1000
        if Gcolor(i,j)==1
            D(i,j,1)=0;
            D(i,j,2)=255;
            D(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000  %% yellow
    for j=1:500
        if Gcolor(i,j)==1
            D(i,j,1)=175;
            D(i,j,2)=175;
            D(i,j,3)=0;
        else
            continue
        end
    end
end

%% set-up of the background color:
background=D(:,:,1)==255 & D(:,:,2)==255 & D(:,:,3)==255;

for i=1:1000
    for j=1:1000
        if background(i,j)==1
            D(i,j,1)=0;
            D(i,j,2)=0;
            D(i,j,3)=0;
        else
            continue
        end
    end
end

%% set-up of middle square for image created above:
D(400:600,400:600,1)=0;
D(400:600,400:600,2)=0;
D(400:600,400:600,3)=0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% lite-yellow
E=imread(outfilename);
imagesc(E);
magnificationFactor=2;
E=imresize(E,[1000,1000]);
axis image;
axis off;
[m,n,o]=size(E);

Ycolor=E(:,:,1)==255 & E(:,:,2)==0 & E(:,:,3)==0;

for i=1:500 %%red
    for j=1:500
        if Ycolor(i,j)==1
            E(i,j,1)=255;
            E(i,j,2)=0;
            E(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000 %% blue
    for j=500:1000
        if Ycolor(i,j)==1
            E(i,j,1)=0;
            E(i,j,2)=0;
            E(i,j,3)=175;
        else
            continue
        end
    end
end

for i=1:500  %% green
    for j=500:1000
        if Ycolor(i,j)==1
            E(i,j,1)=0;
            E(i,j,2)=175;
            E(i,j,3)=0;
        else
            continue
        end
    end
end

for i=500:1000  %% yellow
    for j=1:500
        if Ycolor(i,j)==1
            E(i,j,1)=255;
            E(i,j,2)=255;
            E(i,j,3)=0;
        else
            continue
        end
    end
end

%% set-up of the background color:
background=E(:,:,1)==255 & E(:,:,2)==255 & E(:,:,3)==255;

for i=1:1000
    for j=1:1000
        if background(i,j)==1
            E(i,j,1)=0;
            E(i,j,2)=0;
            E(i,j,3)=0;
        else
            continue
        end
    end
end

%% set-up of middle square for image created above:
E(400:600,400:600,1)=0;
E(400:600,400:600,2)=0;
E(400:600,400:600,3)=0;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% plotting all of the images
subplot(5,1,1)
imagesc(A);
axis image;
axis off;

subplot(5,1,2)
imagesc(B);
axis image;
axis off;

subplot(5,1,3)
imagesc(C);
axis image;
axis off;

subplot(5,1,4)
imagesc(D);
axis image;
axis off;

subplot (5,1,5)
imagesc(E);
axis image;
axis off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% default green color = (0,175,0)
%% lighter green color = (0, 255, 0)
%% default red color = (175, 0, 0)
%% lighter red color = (255, 0, 0)
%% default yellow color = (175, 175, 0)
%% lighter yellow color = (255, 255, 0)
%% default blue color = (0, 0, 175)
%% lighter blue color = (0, 0, 255)