%shuffle function for UNO

function shuffledArray = shuffle2DArray(array, shuffleType)
    % SHUFFLE2DARRAY Randomly shuffles a 2D array based on the shuffle type.
    %
    % Input:
    %   array - A 2D matrix to shuffle.
    %   shuffleType - Type of shuffle ('rows', 'columns', 'all').
    %                 'rows': Shuffle the rows of the matrix.
    %                 'columns': Shuffle the columns of the matrix.
    %                 'all': Shuffle all elements and reshape.
    %
    % Output:
    %   shuffledArray - The shuffled version of the input matrix.
    %
    % Example:
    %   originalArray = [1, 2; 3, 4];
    %   shuffledArray = shuffle2DArray(originalArray, 'rows');

    % Check if input is a 2D array
    if ~ismatrix(array)
        error('Input must be a 2D array.');
    end

    % Handle different shuffle types
    switch shuffleType
        case 'rows'
            % Shuffle rows
            shuffledArray = array(randperm(size(array, 1)), :);
        case 'columns'
            % Shuffle columns
            shuffledArray = array(:, randperm(size(array, 2)));
        case 'all'
            % Flatten, shuffle, and reshape
            [rows, cols] = size(array);
            shuffledElements = array(randperm(numel(array)));
            shuffledArray = reshape(shuffledElements, rows, cols);
        otherwise
            error('Invalid shuffleType. Use ''rows'', ''columns'', or ''all''.');
    end
end

%Test Case for the function
originalArray = [1, 2, 3; 4, 5, 6; 7, 8, 9];
shuffledArray = shuffle2DArray(originalArray, 'rows');

disp('Original Array:');
disp(originalArray);
disp('Shuffled Rows:');
disp(shuffledArray);
