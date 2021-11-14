length = 10000;
max = length*100;
unsorted_list = randi([0 max],1,length);
% unsorted_list = [35,83,59,55,92,28,76,76,38,57];
sorted_list = shellsort(unsorted_list);

check_elements(unsorted_list,sorted_list,max) & issorted(sorted_list) & isequal(sort(unsorted_list),sorted_list)
function bool = check_elements(unsorted_list,sorted_list,max)
    for i = 1:max
        if (length(unsorted_list(unsorted_list==i))~=length(sorted_list(sorted_list==i)))
            bool = false;
            return
        end
    end
    bool= true;
end