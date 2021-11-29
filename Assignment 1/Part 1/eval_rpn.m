function val = eval_rpn(r_string)

% Evaluation of an expression in RPN format. r_string is a Matlab string 
% and val a numeric.
% BASTIAAN VANHOORN, MELANIE OBEREGGER, NOVEMBER 2021

% Constants
operands = ["0" "1" "2" "3" "4" "5" "6" "7" "8" "9"];
operators = ["*" "/" "+" "-"];

% Internal variables
r_array = strsplit(r_string);   % array of symbols in RPN format

% we create logical arrays for each operand, bracket and operator
log_operands=contains(r_array,operands);
log_operators=contains(r_array,operators);
% A tip is to use the function contains() to check symbols in i_array.

stack=[]; % initialize stack

for i=1:length(r_array)
    if log_operands(i)
            stack=push(r_array(i),stack);
    elseif log_operators(i)
            [num1,stack] = pop(stack);
            [num2,stack] = pop(stack);
            switch 1
                case r_array(i)==operators(1)
                    val = str2num(num1)*str2num(num2);
                case r_array(i)==operators(2)
                    val = str2num(num1)/str2num(num2);
                case r_array(i)==operators(3)
                    val = str2num(num1)+str2num(num2);
                case r_array(i)==operators(4)
                    val = str2num(num1)-str2num(num2);
            end %switch
            stack = push(val,stack);
    end %if   
end % for

val = str2num(string(stack(1)));
end % function eval_rpn

