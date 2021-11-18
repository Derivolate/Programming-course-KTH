clear all
close all
clc
global list;
initial_list = readmatrix('data.txt');
%Save the initial list 
list = initial_list;
quicksort(1,length(list));
isequal(sort(initial_list),list)