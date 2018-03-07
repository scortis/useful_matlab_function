function [ A ] = extract( A, dim, range )
nd = ndims(A);
if(dim>5)
    error('Sorry, this function does not work with more than 5 dimensions');
end
if(dim>nd)
    error('Extract dimension must be less or equal to number of dimensions');
end
switch(nd)
    case 1
        switch(dim)
            case 1
                A = A(range);
        end
    case 2
        switch(dim)
            case 1
                A = A(range, :);
            case 2
                A = A(:, range);
        end
    case 3
        switch(dim)
            case 1
                A = A(range, :, :);
            case 2
                A = A(:, range, :);
            case 3
                A = A(:, :, range);
        end
    case 4
        switch(dim)
            case 1
                A = A(range, :, :, :);
            case 2
                A = A(:, range, :, :);
            case 3
                A = A(:, :, range, :);
            case 4
                A = A(:, :, :, range);
        end
    case 5
        switch(dim)
            case 1
                A = A(range, :, :, :, :);
            case 2
                A = A(:, range, :, :, :);
            case 3
                A = A(:, :, range, :, :);
            case 4
                A = A(:, :, :, range, :);
            case 5
                A = A(:, :, :, :, range);
        end
end
end

