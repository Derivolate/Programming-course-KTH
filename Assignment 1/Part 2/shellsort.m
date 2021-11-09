function list = shellsort(list) 
 
interval = floor(length(list)/2); 
while (interval > 0)     
 
    for i = interval:length(list) 
 
        temp = list(i); 
        j = i;  
        while ((j < interval) & (list(j - interval) > temp)) 
            list(j - interval) = list(j);  
            j = j - interval; 
        end % while 
 
        temp = list(j);  
    end %for  
 
   interval = floor(interval/2); 
end % while 
end % shellsort