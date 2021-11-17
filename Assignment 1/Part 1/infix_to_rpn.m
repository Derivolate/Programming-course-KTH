function r_string = infix_to_rpn(i_string)
% Translation of an expression from infix to RPN format. i_string and
% r_string are Matlab strings.
% BASTIAAN VANHOORN, MELANIE OBEREGGER, NOVEMBER 2021

% Constants
operands = ["0" "1" "2" "3" "4" "5" "6" "7" "8" "9"];
operators = ["*" "/" "+" "-"];
% % i_string='( ( 3 + 5 * 1 ) / 8 ) * 14'
% Internal variables
i_array = strsplit(i_string);   % array of symbols in infix format
r_array = [];                   % array of symbols in rpn format
% ...

% % we create logical arrays for each operand, bracket and 
log_left=contains(i_array,'(');
log_right=contains(i_array,')');
log_operands=contains(i_array,operands);
log_operators=contains(i_array,operators);
stack=[];


for i=1:length(i_array)
    if log_left(i)              % % better to use switch/case/otherwise? (improvement task 1)       
        stack = push(i_array(i),stack);
    elseif log_right(i)
        k=0;
        while k<length(stack) && ~strcmp(top(stack),'(')
            [element,stack]=pop(stack);
            r_array=[r_array element];
            k=k+1;
        end %while
        if strcmp(top(stack),'(')
            [~,stack]=pop(stack);
        end % if
    elseif log_operands(i)
        r_array=[r_array i_array(i)];
    elseif log_operators(i)  
        k=0;
        while ~isempty(stack) && ~strcmp(top(stack),'(') && operator_order(top(stack))>=operator_order(i_array(i))
                [element, stack]=pop(stack);
                r_array=[r_array element];
                k=k+1;
        end % while
        stack = push(i_array(i), stack);
    else
        error('loop error occured')
    end %if
        
    % A tip is to use the function contains() to check symbols in i_array.
end %for

while ~isempty(stack)
 %   switch top(stack)   % % unnecessary (improvement task 2)
 %       case '(' 
  %         [~,stack]=pop(stack);
  %      otherwise
    [element,stack]=pop(stack);
    r_array=[r_array element];
  %         end %switch
end % while

r_string = strjoin(r_array);
end %function infix_to_rpn

