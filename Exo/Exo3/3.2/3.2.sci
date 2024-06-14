data = csvRead('data.csv', ',', '[]', "string");

salaire = data(:,7);
salaire = evstr(salaire);

min_salaire = min(salaire)
max_salaire = max(salaire);
moyenne_salaire = mean(salaire);
mediane_salaire = median(salaire);
quartile_salaire = quart(salaire);
interquatile_salaire= iqr(salaire);

M= tabul(salaire,"i");
[max_freq, ind_max] = max(M(:,2));
most_frequent_salaire = M(ind_max, 1);
disp("Le salaire qui se répète le plus souvent est : " + string(most_frequent_salaire));

std_salaire = stdev(salaire);
boxplot(salaire)
