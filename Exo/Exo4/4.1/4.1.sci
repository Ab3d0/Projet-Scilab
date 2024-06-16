// Lecture des données à partir d'un fichier CSV
data = csvRead('data.csv', ',', '[]', "string");

// Extraction des colonnes 'âge' et 'salaire' des données
age = data(:, 2); // colonne d'indice 2 correspondant à l'âge
salaire = data(:, 7); // colonne d'indice 7 correspondant au salaire

// Conversion des chaînes de caractères en valeurs numériques
age = evstr(age);
salaire = evstr(salaire);

// Tracé du nuage de points de l'âge en fonction du salaire
scatter(age, salaire);
xtitle("Nuage de points de l'âge en fonction du salaire");
xlabel("Age");
ylabel("Salaire");

// Calcul et tracé de la ligne de régression linéaire
[a, b] = reglin(age', salaire'); // Calcul des coefficients de régression
x = [min(age), max(age)]; // Définir la plage des valeurs x pour la ligne
y = a * x + b; // Calcul des valeurs y correspondantes
plot(x, y); // Tracer la ligne de régression

// Calcul des statistiques descriptives
moyenne_salaire = mean(salaire); // Moyenne des salaires
moyenne_age = mean(age); // Moyenne des âges
variance_salaire = variance(salaire); // Variance des salaires
variance_age = variance(age); // Variance des âges

// Calcul de la covariance
n = length(salaire); // Nombre d'observations
covariance = sum((salaire - moyenne_salaire) .* (age - moyenne_age)) / n; // Covariance entre salaire et âge

// Calcul du coefficient de corrélation
correlation_coefficient = covariance / sqrt(variance_salaire * variance_age);
disp(correlation_coefficient); // Affichage du coefficient de corrélation

