data1 = data1(2:2:end);
%%
data2 = data2(2:2:end);
%%
data3 = data3(2:2:end);
data4 = data4(2:2:end);
%%
[mx, my] = meshgrid(1:length(data1),1:length(data2));
a = arrayfun(@(x,y) strcmp(data1{x},data2{y}),mx,my);
total_overlapsA = sum(a(:));
%%
[mx, my] = meshgrid(1:length(data3),1:length(data4));
b = arrayfun(@(x,y) strcmp(data3{x},data4{y}),mx,my);
%%
total_overlapsB = sum(b(:));
%%
[idx idy] = find(a);
overlaps{1} = data1(idy);
[idx idy] = find(b);
overlaps{2} = data3(idy);
%%
[mx, my] = meshgrid(1:length(overlaps{1}),1:length(overlaps{2}));
c = arrayfun(@(x,y) strcmp(overlaps{1}{x},overlaps{2}{y}),mx,my);
[idx idy] = find(c);
overlaps{3} = overlaps{2}(idx);