// Lire les données du fichier CSV
data = csvRead('data.csv', ';');

// Extraire les colonnes pertinentes
genres = data(:, 3);  // Genre
niveaux_education = data(:, 4);  // Niveau d'éducation


// Trouver les indices des employés masculins et féminins
male_indices = find(genres == "Male");
female_indices = find(genres == "Female");

// Extraire les niveaux d'éducation pour chaque genre
male_education = niveaux_education(male_indices);
female_education = niveaux_education(female_indices);

male_education = evstr(male_education);
female_education = evstr(female_education);

// Compter le nombre de salariés dans chaque niveau d'éducation pour chaque genre
male_counts = zeros(1, 4);
female_counts = zeros(1, 4);

for i = 0:3
    male_counts(i+1) = sum(male_education == i);
    female_counts(i+1) = sum(female_education == i);
end

// Afficher les résultats sous forme d'histogramme
x = ["High School", "Bachelor", "Master", "PhD"];

bar([0:3], [male_counts' female_counts']);
xtitle('Répartition des niveaux d''éducation selon le genre', 'Niveau d''éducation', 'Effectif');
legend(["Male", "Female"]);
xticks(1:4, x);

