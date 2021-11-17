function [element, stack] = pop(stack);

% Remove the top element from a stack, and return this element and the new
% stack. stack is a cell array of Matlab strings and element is a Matlab 
% string.
% BASTIAAN VANHOORN, MELANIE OBEREGGER, NOVEMBER 2021

% the top element is that of index (end) because we added elements of
% increasing index to the stack

switch length(stack)
    case 0
        element=[];
        disp('the pop-function of an empty stack was called')
   otherwise
        element=top(stack);
        stack=stack(1:end-1);
end

