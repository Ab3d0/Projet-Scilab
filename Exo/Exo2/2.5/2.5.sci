data = csvRead('data.csv', ',', '[]', "string");

experience = data(:,6);
experience = evstr(experience);

min_experience = min(experience)
max_experience = max(experience);
moyenne_experience = mean(experience);
mediane_experience = median(experience);
quartile_experience = quart(experience);
interquatile_experience = iqr(experience);
M= tabul(experience,"i");
[max_freq, ind_max] = max(M(:,2));
most_frequent_experience = M(ind_max, 1);
disp("L experience qui se répète le plus souvent est : " + string(most_frequent_experience));

std_experience = stdev(experience);

boxplot(experience);
