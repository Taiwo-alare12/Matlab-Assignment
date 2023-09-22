function x = GaussElim(A, B)
    N = length(B);
    x = zeros(N,1);
    
    % Augmenting the matrix by joining the source vector B with the co-efficient matrix A
    Aug = [A, B];  % Use a comma to concatenate matrices horizontally
    % I make the augmented matrix an upper triangular matrix using this
    % loop
    for j = 1:N-1
        for i = j+1:N
            if Aug(j,j) ~= 0
            m = Aug(i,j) / Aug(j,j);
            Aug(i,:) = Aug(i,:) - (m * Aug(j,:));
            else
                error('computational error') % dividing by zero will give syntax error
            end
       
    end 
    
    % Displaying the upper triangular augmented matrix
    Aug
    
    x(N) = Aug(N,N+1) / Aug(N,N);
    for k = N-1:-1:1
        x(k) = (Aug(k,N+1) - Aug(k,k+1:N) * x(k+1:N)) / Aug(k,k);
    end
    x
end
