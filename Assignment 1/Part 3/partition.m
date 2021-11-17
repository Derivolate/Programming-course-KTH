function i = partition(left,right)
    global list
    right_ini = right;
    %Get pivot in the middle between left and right
    i = round((left+right)/2);
    %Move the pivot element to the right
    pivot_val = list(i);
    list(i) = list(right);
    list(right) = pivot_val;
    %sort elements between left, pivot, and right
    %Decrease the right index because the pivot got moved to the right
    while left < right
        %Increase the until a value larger or equal to the pivot is found
        while list(left) < pivot_val
            left = left+1;
        end
        %Decrease the right index until a value smaller than the pivot is found
        %If the list is partitioned, the right index will equal the left index
        while list(right) >= pivot_val && left < right
            right = right-1;
        end
        %Swap the elements on the left and the right index, but only if they're actually different
        if left < right && list(left)~=list(right)
            temp = list(left);
            list(left) = list(right);
            list(right) = temp;
        end
    end
    %Change the pivot to the value of the indices
    i = right;
    %Swap the value at the end of the list and at the pivot
    %Increase the pivot if the value at the pivot is lesser or equal to the right element,
    % and not at the far right of the list yet
    if ~(list(i) > pivot_val  || right==right_ini)
        i = i+1;
    end
    temp = list(i);
    list(i) = pivot_val;
    list(right_ini) = temp;
end