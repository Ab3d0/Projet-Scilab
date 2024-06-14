age = data(:,2);
age= evstr(age);

min_age = min(age)
max_age = max(age);
moyenne_age = mean(age);
mediane_age = median(age);
quartile_age = quart(age);
interquatile_age = iqr(age);

M= tabul(age,"i");
[max_freq, ind_max] = max(M(:,2));
most_frequent_age = M(ind_max, 1);
disp("L age qui se répète le plus souvent est : " + string(most_frequent_age));


std_age = stdev(age);
