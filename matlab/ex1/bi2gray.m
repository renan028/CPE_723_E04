function g = bi2gray( b )
% BI2GRAY converts a binary code to a Gray code. The most
% significat bit is the left hand side bit. 
% When the inpt argument is a binary matrix, each row is
% converted to the Gray code.

    g(:,1) = b(:,1);
    
    for i = 2:size(b,2)
        g(:,i) = xor( b(:,i-1), b(:,i) ); 
    end
    
return;