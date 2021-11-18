length = 10000;
max = length*100;
unsorted_list = randi([0 max],1,length);
% unsorted_list = [35,83,59,55,92,28,76,76,38,57];
sorted_list = shellsort(unsorted_list);

isequal(sort(unsorted_list),sorted_list)