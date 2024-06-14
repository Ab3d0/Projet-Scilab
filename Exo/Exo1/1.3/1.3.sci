data = csvRead('data.csv', ',', '[]', "string");


 professions = data(:, 5); // Colonne 5 contient les intitulés de métier

 // Compter le nombre de salariés pour chaque profession

 profession_counts = histc(professions, unique(professions));

 [sorted_counts, indices] = gsort(profession_counts, 'r');

 top_10_counts = sorted_counts(1:10);

 top_10_professions = indices(1:10);

 bar(top_10_counts);

 set(gca(), 'xticklabel', top_10_professions, 'xticklabel_rotation', 45);

 xlabel('Profession');

 ylabel('Nombre de salariés');

title('Les 10 professions les plus représentées dans Scilab');

disp(professions(top_10_counts));
