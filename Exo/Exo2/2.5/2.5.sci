// Lecture des données à partir d'un fichier CSV
data = csvRead('data.csv', ',', '[]', "string");

// Extraction de la colonne 'expérience' des données
experience = data(:, 6); // colonne d'indice 6 correspondant à l'expérience
experience = evstr(experience); // Conversion des chaînes de caractères en valeurs numériques

// Calcul des statistiques descriptives pour l'expérience
min_experience = min(experience);
disp("L expérience minimum est : " + string(min_experience));

max_experience = max(experience);
disp("L expérience maximum est : " + string(max_experience));

moyenne_experience = mean(experience);
disp("L expérience moyenne est : " + string(moyenne_experience));

mediane_experience = median(experience);
disp("La médiane de l expérience est : " + string(mediane_experience));

quartile_experience = quart(experience);
disp("Les quartiles de l expérience sont : " + string(quartile_experience));

interquatile_experience = iqr(experience);
disp("L écart interquartile de l expérience est : " + string(interquatile_experience));

// Calcul de l'expérience la plus fréquente
M = tabul(experience, "i");
[max_freq, ind_max] = max(M(:, 2));
most_frequent_experience = M(ind_max, 1);
disp("L expérience qui se répète le plus souvent est : " + string(most_frequent_experience));

// Calcul de l'écart type de l'expérience
std_experience = stdev(experience);
disp("L écart type de l expérience est : " + string(std_experience));

// Tracé de la boîte à moustaches pour l'expérience
boxplot(experience);
xtitle("Boîte à moustaches de l expérience");
ylabel("Expérience");
