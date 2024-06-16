// Lecture des données à partir d'un fichier CSV
data = csvRead('data.csv', ',', '[]', "string");

// Extraction des colonnes 'expérience' et 'salaire' des données
experience = data(:, 6); // colonne d'indice 6 correspondant à l'expérience
salaire = data(:, 7); // colonne d'indice 7 correspondant au salaire

// Conversion des chaînes de caractères en valeurs numériques
experience = evstr(experience);
salaire = evstr(salaire);

// Tracé du nuage de points de l'expérience en fonction du salaire
scatter(experience, salaire);
xtitle("Nuage de points de l'expérience en fonction du salaire");
xlabel('Experience');
ylabel('Salaire');

// Calcul et tracé de la ligne de régression linéaire
[a, b] = reglin(experience', salaire'); // Calcul des coefficients de régression
x = [min(experience), max(experience)]; // Définir la plage des valeurs x pour la ligne
y = a * x + b; // Calcul des valeurs y correspondantes
plot(x, y); // Tracer la ligne de régression

// Calcul des statistiques descriptives
moyenne_salaire = mean(salaire); // Moyenne des salaires
moyenne_experience = mean(experience); // Moyenne de l'expérience
variance_salaire = variance(salaire); // Variance des salaires
variance_experience = variance(experience); // Variance de l'expérience

// Calcul de la covariance
n = length(salaire); // Nombre d'observations
covariance = sum((salaire - moyenne_salaire) .* (experience - moyenne_experience)) / n; // Covariance entre salaire et expérience

// Calcul du coefficient de corrélation
correlation_coefficient = covariance / sqrt(variance_salaire * variance_experience);
disp(correlation_coefficient); // Affichage du coefficient de corrélation
