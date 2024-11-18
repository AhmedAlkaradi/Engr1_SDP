function shuffledArray = shuffleArray(array)
    % SHUFFLEARRAY Randomly shuffles the elements of an input array.
    %
    % Input:
    %   array - A 1D array to shuffle (vector).
    %
    % Output:
    %   shuffledArray - The shuffled version of the input array.
    %
    % Example:
    %   originalArray = [1, 2, 3, 4, 5];
    %   shuffledArray = shuffleArray(originalArray);

    % Ensure input is a vector
    if ~isvector(array)
        error('Input must be a 1D array (vector).');
    end

    % Generate a random permutation of indices
    shuffledArray = array(randperm(length(array)));
end

originalArray = [10, 20, 30, 40, 50];
shuffledArray = shuffleArray(originalArray);
disp('Original Array:');
disp(originalArray);
disp('Shuffled Array:');
disp(shuffledArray);
