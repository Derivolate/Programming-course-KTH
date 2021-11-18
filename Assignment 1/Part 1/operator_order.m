function priority=operator_order(symbol)

% Evaluation of an expression in RPN format. r_string is a Matlab string 
% and val a numeric.
% BASTIAAN VANHOORN, MELANIE OBEREGGER, NOVEMBER 2021

operators = ["*" "/" "+" "-"];
if symbol==operators(1) || symbol==operators(2) % * or /
     priority=2; 
elseif  symbol==operators(3) || symbol==operators(4) % + or -
    priority=1;
else 
    priority=0;
end % if

end % function operator_order