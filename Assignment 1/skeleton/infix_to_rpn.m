function r_string = infix_to_rpn(i_string)

% Translation of an expression from infix to RPN format. i_string and
% r_string are Matlab strings.
% YOUR NAME/NAMES, MONTH YEAR

% Constants
operands = ["0" "1" "2" "3" "4" "5" "6" "7" "8" "9"];
operators = ["*" "/" "+" "-"];

% Internal variables
i_array = strsplit(i_string);   % array of symbols in infix format
r_array = [];                   % array of symbols in rpn format
% ...

for i=1:length(i_array)
    
    % ... 
    % A tip is to use the function contains() to check symbols in i_array.
    
end

r_string = strjoin(r_array);
end

