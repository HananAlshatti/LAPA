%hanan alshatti PA 4 101137569%

row = 20; col =20;
v = zeros(row,col);
v(:,1) = 1;
v(:,col) = 1;
x = 20;
y = 20;
[x,y] = meshgrid(1:x,1:y);

for n = 1:35
    figure(1)
    surf(x,y,v)
    pause(0.2)
    for f = 2: col-1
        for o  = 1: row
            if o == 1
                v(o,f) = 0;
            elseif o == row
                v(o,f) = 0;
            else
                v(o,f) = (v(o-1,f)+v(o+1,f)+v(o,f+1)+v(o,f-1))/4;   
            end
        end   
    end
end

figure(2)
[Nx,Ny] = gradient(v,1,1);
quiver(x,y,Nx,Ny)