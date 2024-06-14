/*---------------------------------Homme---------------------------*/

data = csvRead('data.csv', ',', '[]', "string");

male_indices = find(data(:,3) == "Male"); // Trouver les indices des employés masculins
 // Trouver les indices des employés féminins


male_salaire = data(male_indices, 7); // Extraire les salaires des employés masculins
male_salaire = evstr(male_salaire); // Convertir les données en valeurs numériques si
nécessaire




min_male_salaire = min(male_salaire)
max_male_salaire = max(male_salaire);
moyenne_male_salaire = mean(male_salaire);
mediane_male_salaire = median(male_salaire);
quartile_male_salaire = quart(male_salaire);
interquatile_male_salaire= iqr(male_salaire);

M= tabul(male_salaire,"i");
[max_freq, ind_max] = max(M(:,2));
most_frequent_male_salaire = M(ind_max, 1);
disp("Le salaire des hommes qui se répète le plus souvent est : " +
string(most_frequent_male_salaire));

std_male_salaire = stdev(male_salaire);
boxplot(male_salaire);

/*---------------------------------Femme---------------------------*/
data = csvRead('data.csv', ',', '[]', "string");

female_indices = find(data(:,3) == "Female"); // Trouver les indices des employés féminins

female_salaire = data(female_indices, 7); // Extraire les salaires des employés féminins
female_salaire = evstr(female_salaire); // Convertir les données en valeurs numériques si
nécessaire

min_female_salaire = min(female_salaire)
max_female_salaire = max(female_salaire);
moyenne_female_salaire = mean(female_salaire);
mediane_female_salaire = median(female_salaire);
quartile_female_salaire = quart(female_salaire);
interquatile_female_salaire= iqr(female_salaire);

M= tabul(female_salaire,"i");
[max_freq, ind_max] = max(M(:,2));
most_frequent_female_salaire = M(ind_max, 1);
disp("Le salaire des femmes qui se répète le plus souvent est : " +
string(most_frequent_female_salaire));
std_female_salaire = stdev(female_salaire);
boxplot(female_salaire);

/*---------------------------------Autre ---------------------------*/

other_indices = find(data(:,3) == "Other");

other_salaire = data(other_indices, 7); // Extraire les salaires des autres genres
other_salaire = evstr(other_salaire); // Convertir les données en valeurs numériques si
nécessaire

min_other_salaire = min(other_salaire)
max_other_salaire = max(other_salaire);
moyenne_other_salaire = mean(other_salaire);
mediane_other_salaire = median(other_salaire);
quartile_other_salaire = quart(other_salaire);
interquatile_other_salaire= iqr(other_salaire);

M= tabul(other_salaire,"i");
[max_freq, ind_max] = max(M(:,2));
most_frequent_other_salaire = M(ind_max, 1);

disp("Le salaire des femmes qui se répète le plus souvent est : " +
string(most_frequent_other_salaire));
std_other_salaire = stdev(other_salaire);
boxplot(other_salaire)
