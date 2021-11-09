function val = eval_rpn(r_string)

% Evaluation of an expression in RPN format. r_string is a Matlab string 
% and val a numeric.
% YOUR NAME/NAMES, MONTH YEAR

% Constants
operands = ["0" "1" "2" "3" "4" "5" "6" "7" "8" "9"];
operators = ["*" "/" "+" "-"];

% Internal variables
r_array = strsplit(r_string);   % array of symbols in RPN format
% ...

for i=1:length(r_array)
    
    % ... 
    % A tip is to use the function contains() to check symbols in r_array.
    
end

val = % ...
end

