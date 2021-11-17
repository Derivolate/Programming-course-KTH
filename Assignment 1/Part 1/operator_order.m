function priority=operator_order(symbol)

% Evaluation of an expression in RPN format. r_string is a Matlab string 
% and val a numeric.
% BASTIAAN VANHOORN, MELANIE OBEREGGER, NOVEMBER 2021

operators = ["*" "/" "+" "-"];
if symbol==operators(1) || symbol==operators(2)
     priority=2; 
elseif  symbol==operators(3) || symbol==operators(4)
    priority=1;
else 
    priority=0;
end
% switch 1
%     case symbol==operators(1) %|| symbol==operators(2)
%         priority=2; % symbol * or /
%     case symbol==operators(2)
%         priority=2; % symbol * or /
%     case symbol==operators(3) %|| symbol==operators(4)
%         priority=1; % symbol + or - 
%     case symbol==operators(4)
%         priority=1; % symbol + or -         
%     otherwise
%         priority=0;
%    %otherwise
%       % error('error occured calling the function operator_order')
% end
end