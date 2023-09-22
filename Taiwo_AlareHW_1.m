% This code convert a number in base n to base m.
% base n and base m are between 2 and 10
% To do this, I converted base n to base 10 using "base2dec(num_base_n, n)" function
% and then converted from base 10 to base m using "dec2base(num_base_10, m)" function.
% But first, I verified that the inputed number is in base n and that base
% n and m are between 2 to 10.



% I want to ask the user to enter base 'n' and base 'm' but n and m must be 2 -10  (2 ≤ n ≤ 10)
disp('base n  and base m should be between 2 to 10');
n = input('Enter the base of  n (2 ≤ n ≤ 10): ');
m = input('Enter the base of  m (2 ≤ m ≤ 10): ');


% I want to check whether  base n and base m is between the specified range
if n < 2 || n > 10
    error('Invalid input for n. Please enter a value between 2 and 10.');
end

if m < 2 || m > 10
    error('Invalid input for m. Please enter a value between 2 and 10.');
end


% I want to ask the user for a number in base-n
disp('The number should be in the base you specified for n'),
num_base_n = input(['Enter a number in base-' num2str(n) ': '], 's');


% I want to check if the input number is valid in base-n, if not it would
% display an error feedback
valid_input_n = CheckBase(num_base_n, n);

if ~valid_input_n
    error('Invalid input for base-%d. Please enter a valid number in base-%d.', n, n);
end




% My first step, I want to convert the number from base-n to base-10
num_base_10 = base2dec(num_base_n, n);


% My second step, I want to convert the number from base-10 to base-m
num_base_m = dec2base(num_base_10, m);

% Display the results
fprintf('The number %s in base-%d is equivalent to %s in base-%d.\n', num_base_n, n, num_base_m, m);

function valid = CheckBase(num_str, n)
    %I am initializing a flag to determine if the input is valid in base-n
    valid = true;
    
    % Convert the input number to a string for processing
    num_digits = numel(num_str);
    
    % Iterate through each digit and check if it's within the base-n range
    for i = 1:num_digits
        digit = str2double(num_str(i));
        if isnan(digit) || digit >= n
            valid = false;
            return;
        end
    end
end
