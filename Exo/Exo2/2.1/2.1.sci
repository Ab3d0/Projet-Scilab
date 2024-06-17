// Lecture des données à partir d'un fichier CSV
data = csvRead('data.csv', ',', '[]', "string");

// Extraction de la colonne 'âges' des données
ages = data(:, 2); // colonne d'indice 2 correspondant aux âges
ages = evstr(ages); // Conversion des chaînes de caractères en valeurs numériques

// Identification des âges uniques et comptage de leur occurrence
unique_ages = unique(ages);
age_counts = zeros(length(unique_ages), 1);

for i = 1:length(unique_ages)
    age_counts(i) = sum(ages == unique_ages(i));
end

// Tri des âges uniques par ordre croissant
[unique_ages, sortIdx] = gsort(unique_ages, 'g', 'i');
age_counts = age_counts(sortIdx);

// Tracé du diagramme en barres pour la distribution des âges
clf; // Efface toute figure précédente
bar(unique_ages, age_counts);
xlabel('Âge');
ylabel('Nombre de salariés');
title('Distribution des âges des salariés');

