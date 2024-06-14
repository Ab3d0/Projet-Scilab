data = csvRead('data.csv', ',', '[]', "string");

genres = data(:, 3);

male_count = sum(genres == "Male");
female_count = sum(genres == "Female");
other_count = sum(genres == “Other”);

counts = [male_count, female_count, other_count];
labels = ["Male", "Female", “Other”];

// Calculer les pourcentages
total = male_count + female_count + other_count;
percentages = 100 * counts / total;

// Créer le graphique en camembert avec les pourcentages
pie(counts, labels);
title('Répartition des genres');
legends([string(labels(1)) + ': ' + string(percentages(1)) + '%', string(labels(2)) + ': ' + string(percentages(2)) + '%')], [1, 5]);
