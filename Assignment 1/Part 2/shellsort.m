function list = shellsort(list) 
    %Start shellsorting with lists of 2 elements
    interval = floor(length(list)/2);
    %Keep looping as long as the interval is larger than 0. interval = 1 -> insertion sort
    while (interval > 0)     
        
        %Loop over every sublist composed of taking elements of the list 'interval' appart
        for j = interval:interval:length(list) 
            
            %Save the current element
            temp = list(j); 
            %If the previous element in the sublist is larger than the current element, copy the previous element to the current element
            while ((j > interval) & (list(j - interval) > temp)) 
                list(j) = list(j - interval);
                %Go one step back in the sublist to check if the element has to be moved back even further
                j = j - interval; 
            end % while 
            %Put back the temporarily saved element (that got overwritten) at the final spot that opened up further at the beginning
            list(j) = temp;  
        end %for  
        %Half the interval
        interval = floor(interval/2); 
    end % while 
end % shellsort