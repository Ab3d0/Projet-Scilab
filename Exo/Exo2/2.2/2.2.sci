// Lecture des données à partir d'un fichier CSV
data = csvRead('data.csv', ',', '[]', "string");

// Extraction de la colonne 'expérience' des données
experience = data(:, 6); 
experience = evstr(experience); // Conversion des chaînes de caractères en valeurs numériques

// Identification des expériences uniques et comptage de leur occurrence
unique_experience = unique(experience);
experience_counts = zeros(size(unique_experience));

for i = 1:length(unique_experience)
    experience_counts(i) = sum(experience == unique_experience(i));
end

// Tracé du diagramme en barres pour la distribution de l'expérience
clf; // Efface toute figure précédente
bar(unique_experience, experience_counts);
xlabel('Années d\'expérience');
ylabel('Nombre de salariés');
title('Distribution de l\'expérience des salariés');
