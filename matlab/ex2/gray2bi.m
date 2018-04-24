function b = gray2bi( g )
    b(:,1) = g(:,1);
    
    for i = 2:size(g,2)
        b(:,i) = xor( b(:,i-1), g(:,i) ); 
    end

return;