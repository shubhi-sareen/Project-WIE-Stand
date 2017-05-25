function[dist] = calcDistance(x,predx)
diffval = (predx-x).*(predx-x);
sumval = sum(diffval);
dist = sumval/22;
end