data = csvRead('data.csv', ',', '[]', "string");

male_indices = find(data(:,3) == "Male"); // Trouver les indices des employés masculins
female_indices = find(data(:,3) == "Female"); // Trouver les indices des employés féminins
other_indices = find(data(:,3) == “Other”);

male_salaire = data(male_indices, 7); // Extraire les salaires des employés masculins
male_salaire = evstr(male_salaire); // Convertir les données en valeurs numériques si
nécessaire
female_salaire = data(female_indices, 7); // Extraire les salaires des employés féminins
female_salaire = evstr(female_salaire); // Convertir les données en valeurs numériques si
nécessaire
other_salaire = data(other_indices, 7); // Extraire les salaires des autres genres
other_salaire = evstr(other_salaire); // Convertir les données en valeurs numériques si
nécessaire

subplot(1, 3, 1);
histplot(20, male_salaire);
title("Male Salaire Distribution");
legend("Male");
xlabel("Salaire");
ylabel("Nombre de salariés");
xtitle("Salaire Distribution pour les hommes");

subplot(1, 3, 2);
histplot(20, female_salaire);
title("Female Salaire Distribution");
legend("Female");
xlabel("Salaire");
ylabel("Nombre de salariés");
xtitle("Salaire Distribution pour les femmes");

subplot(1, 3, 3);
histplot(20, other_salaire);
title("Non Binaire Salaire Distribution");
legend("Other");
xlabel("Salaire");
ylabel(“Nombre de salariés");
xtitle("Salaire Distribution pour Non-Binaire");
