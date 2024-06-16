data = csvRead('data.csv', ',', '[]', "string");

// Extraction de la colonne 'âge' des données
age = data(:, 2); // colonne d'indice 2 correspondant à l'âge
age = evstr(age); // Conversion des chaînes de caractères en valeurs numériques

// Calcul des statistiques descriptives pour l'âge
min_age = min(age);
disp("L âge minimum est : " + string(min_age));

max_age = max(age);
disp("L âge maximum est : " + string(max_age));

moyenne_age = mean(age);
disp("L âge moyen est : " + string(moyenne_age));

mediane_age = median(age);
disp("La médiane de l âge est : " + string(mediane_age));

quartile_age = quart(age);
disp("Les quartiles de l âge sont : " + string(quartile_age));

interquatile_age = iqr(age);
disp("L écart interquartile de l âge est : " + string(interquatile_age));

// Calcul de l'âge le plus fréquent
M = tabul(age, "i");
[max_freq, ind_max] = max(M(:, 2));
most_frequent_age = M(ind_max, 1);
disp("L âge qui se répète le plus souvent est : " + string(most_frequent_age));

// Calcul de l'écart type de l'âge
std_age = stdev(age);
disp("L écart type de l âge est : " + string(std_age));