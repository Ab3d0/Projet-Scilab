/*------------------------Pour les High_School ------------------------*/

data = csvRead('data.csv', ',', '[]', "string");

// Extraction des colonnes 'expérience', 'salaire', et 'niveau d'études' des données
experience = data(:, 6); // colonne d'indice 6 correspondant à l'expérience
salaire = data(:, 7); // colonne d'indice 7 correspondant au salaire
niveau_etude = data(:, 4); // colonne d'indice 4 correspondant au niveau d'études

// Conversion des chaînes de caractères en valeurs numériques
experience = evstr(experience);
salaire = evstr(salaire);
niveau_etude = evstr(niveau_etude);

// Filtrer les données pour les personnes ayant un niveau d'études "High School"
indices_High_School = find(niveau_etude == 0);
salaire_High_School = salaire(indices_High_School);
experience_High_School = experience(indices_High_School);

// Tracé du nuage de points du salaire en fonction de l'expérience pour les "High School"
scatter(salaire_High_School, experience_High_School);
xtitle("Nuage de points du salaire en fonction de l expérience pour les High School");
xlabel("Salaire");
ylabel("Experience");

// Calcul et tracé de la ligne de régression linéaire pour les données "High School"
[a, b] = reglin(salaire_High_School', experience_High_School'); // Calcul des coefficients de régression
x = [min(salaire_High_School), max(salaire_High_School)]; // Définir la plage des valeurs x pour la ligne
y = a * x + b; // Calcul des valeurs y correspondantes
plot(x, y); // Tracer la ligne de régression


/*------------------------Pour les Bachelors ------------------------*/

// Lecture des données à partir d'un fichier CSV
data = csvRead('data.csv', ',', '[]', "string");

// Extraction des colonnes 'expérience', 'salaire', et 'niveau d'études' des données
experience = data(:, 6); // colonne d'indice 6 correspondant à l'expérience
salaire = data(:, 7); // colonne d'indice 7 correspondant au salaire
niveau_etude = data(:, 4); // colonne d'indice 4 correspondant au niveau d'études

// Conversion des chaînes de caractères en valeurs numériques
experience = evstr(experience);
salaire = evstr(salaire);
niveau_etude = evstr(niveau_etude);

// Filtrer les données pour les personnes ayant un niveau d'études "Bachelor"
indices_Bachelor = find(niveau_etude == 1);
salaire_Bachelor = salaire(indices_Bachelor);
experience_Bachelor = experience(indices_Bachelor);

// Tracé du nuage de points du salaire en fonction de l'expérience pour les "Bachelor"
scatter(salaire_Bachelor, experience_Bachelor);
xtitle("Nuage de points du salaire en fonction de l expérience pour les Bachelor");
xlabel("Salaire");
ylabel("Experience");

// Calcul et tracé de la ligne de régression linéaire pour les données "Bachelor"
[a, b] = reglin(salaire_Bachelor', experience_Bachelor'); // Calcul des coefficients de régression
x = [min(salaire_Bachelor), max(salaire_Bachelor)]; // Définir la plage des valeurs x pour la ligne
y = a * x + b; // Calcul des valeurs y correspondantes
plot(x, y); // Tracer la ligne de régression



/*------------------------Pour les Master ------------------------*/

// Lecture des données à partir d'un fichier CSV
data = csvRead('data.csv', ',', '[]', "string");

// Extraction des colonnes 'expérience', 'salaire', et 'niveau d'études' des données
experience = data(:, 6); // colonne d'indice 6 correspondant à l'expérience
salaire = data(:, 7); // colonne d'indice 7 correspondant au salaire
niveau_etude = data(:, 4); // colonne d'indice 4 correspondant au niveau d'études

// Conversion des chaînes de caractères en valeurs numériques
experience = evstr(experience);
salaire = evstr(salaire);
niveau_etude = evstr(niveau_etude); // Correction de la variable de niveau d'études

// Filtrer les données pour les personnes ayant un niveau d'études "Master"
indices_Master = find(niveau_etude == 2);
salaire_Master = salaire(indices_Master);
experience_Master = experience(indices_Master);

// Tracé du nuage de points du salaire en fonction de l'expérience pour les "Master"
scatter(salaire_Master, experience_Master);
xtitle("Nuage de points du salaire en fonction de l expérience pour les Master");
xlabel("Salaire");
ylabel("Experience");

// Calcul et tracé de la ligne de régression linéaire pour les données "Master"
[a, b] = reglin(salaire_Master', experience_Master'); // Calcul des coefficients de régression
x = [min(salaire_Master), max(salaire_Master)]; // Définir la plage des valeurs x pour la ligne
y = a * x + b; // Calcul des valeurs y correspondantes
plot(x, y); // Tracer la ligne de régression

/*------------------------Pour les PhD ------------------------*/

// Lecture des données à partir d'un fichier CSV
data = csvRead('data.csv', ',', '[]', "string");

// Extraction des colonnes 'expérience', 'salaire', et 'niveau d'études' des données
experience = data(:, 6); // colonne d'indice 6 correspondant à l'expérience
salaire = data(:, 7); // colonne d'indice 7 correspondant au salaire
niveau_etude = data(:, 4); // colonne d'indice 4 correspondant au niveau d'études

// Conversion des chaînes de caractères en valeurs numériques
experience = evstr(experience);
salaire = evstr(salaire);
niveau_etude = evstr(niveau_etude); // Correction de la variable de niveau d'études

// Filtrer les données pour les personnes ayant un niveau d'études "PhD"
indices_PhD = find(niveau_etude == 3);
salaire_PhD = salaire(indices_PhD);
experience_PhD = experience(indices_PhD);

// Tracé du nuage de points du salaire en fonction de l'expérience pour les "PhD"
scatter(salaire_PhD, experience_PhD);
xtitle("Nuage de points du salaire en fonction de l expérience pour les PhD");
xlabel("Salaire");
ylabel("Experience");

// Calcul et tracé de la ligne de régression linéaire pour les données "PhD"
[a, b] = reglin(salaire_PhD', experience_PhD'); // Calcul des coefficients de régression
x = [min(salaire_PhD), max(salaire_PhD)]; // Définir la plage des valeurs x pour la ligne
y = a * x + b; // Calcul des valeurs y correspondantes
plot(x, y); // Tracer la ligne de régression





