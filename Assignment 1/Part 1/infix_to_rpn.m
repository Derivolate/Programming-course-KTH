function r_string = infix_to_rpn(i_string)
% Translation of an expression from infix to RPN format. i_string and
% r_string are Matlab strings.
% BASTIAAN VANHOORN, MELANIE OBEREGGER, NOVEMBER 2021

% Constants
operands = ["0" "1" "2" "3" "4" "5" "6" "7" "8" "9"];
operators = ["*" "/" "+" "-"];
% test % i_string='( ( 3 + 5 * 1 ) / 8 ) * 14'
% Internal variables
i_array = strsplit(i_string);   % array of symbols in infix format
r_array = [];                   % array of symbols in rpn format

% we create logical arrays for each operand, bracket and operator
log_left=contains(i_array,'(');
log_right=contains(i_array,')');
log_operands=contains(i_array,operands);
log_operators=contains(i_array,operators);
% A tip is to use the function contains() to check symbols in i_array.

stack=[]; % initialize the stack


for i=1:length(i_array)
    % for each element in the array we check for its number/symbol
    % switch/case/otherwise could also be used here
    if log_left(i)   % left bracket              
        stack = push(i_array(i),stack); % add to stack
    elseif log_right(i) % right bracket
        k=0;
        % all symbols from the stack are added to output until the stack is
        % empty or an accompanying left bracket is found
        while k<length(stack) && ~strcmp(top(stack),'(')  
            [element,stack]=pop(stack);
            r_array=[r_array element];
            k=k+1;
        end %while
        if strcmp(top(stack),'(')
            [~,stack]=pop(stack); % remove accompanying left bracket
        end % if
    elseif log_operands(i) % numbers
        r_array=[r_array i_array(i)]; % add directly to output
    elseif log_operators(i) % symbols: * / + -
        k=0;
        % we transfer from stack to output as long as the stack is not
        % empty, we don't find a left bracket, and the operator priority
        % doesn't decrease
        while ~isempty(stack) && ~strcmp(top(stack),'(') && operator_order(top(stack))>=operator_order(i_array(i))
                [element, stack]=pop(stack);
                r_array=[r_array element];
                k=k+1;
        end % while
        stack = push(i_array(i), stack); % add new operator symbol to stack
    else 
        error('unexpected symbol in the input string')
    end %if
end %for

% we transfer remaining elements in the stack to the output
while ~isempty(stack)
    [element,stack]=pop(stack);
    r_array=[r_array element];
end % while

r_string = strjoin(r_array);
end %function infix_to_rpn

