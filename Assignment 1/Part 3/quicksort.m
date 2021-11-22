function quicksort(left,right)
    global list
    if (right > left)
        i = partition(left,right);
        i
        left
        right
        list
        quicksort(left,i-1);
        quicksort(i+1,right);
    end % if
end % quicksort