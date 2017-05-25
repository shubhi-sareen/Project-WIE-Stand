countans = 0;
for i = 1:size(predx)
dist = zeros(size(xfinal),1);
for j = 1:size(xfinal)
dist(j,1) = calcDistance(xfinal(j,:),predx(i,:));
end
count = zeros(88,1);
[val, ymin1] = min(dist,[],1)
count(yfinal(ymin1,1), 1) += 1;
dist(ymin1,1) = 100;
[val, ymin2] = min(dist,[],1)
count(yfinal(ymin2,1), 1) += 1;
dist(ymin2,1) = 100;
[val, ymin3] = min(dist,[],1)
count(yfinal(ymin3,1), 1) += 1;
dist(ymin3,1) = 100;
[val, ymin4] = min(dist,[],1)
count(yfinal(ymin4,1), 1) += 1;
dist(ymin4,1) = 100;
[val, ymin5] = min(dist,[],1)
count(yfinal(ymin5, 1),1) += 1;
dist(ymin5, 1) = 100;
[val, index] = max(count,[],1)
if(index == y(i,1))
countans++;
end
end;
