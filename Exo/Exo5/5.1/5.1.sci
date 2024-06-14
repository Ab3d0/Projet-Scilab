/*------------------------Homme---------------------------------*/

data = csvRead('data.csv', ',', '[]', "string");

genre = data(:, 3);
experience = data(:, 6); // Colonne 6 : nombre d'années d'expérience
salaire = data(:, 7);

experience = evstr(experience);
salaire = evstr(salaire);

male_indices = find(genre == “Male”);
male_experience = experience(male_indices);
male_salaire = salaire(male_indices);

scatter(male_salaire , male_experience);
xtitle('Nuage de points du salaire en fonction de l experience pour les Hommes ')
xlabel("Salaire");
ylabel("Experience");

[a ,b]= reglin(male_salaire', male_experience')
x = [min(male_salaire), max(male_salaire)];
y = a * x +b
plot(x, y);

/*-----------------------------Femme------------------------------------*/

data = csvRead('data.csv', ',', '[]', "string");

genre = data(:, 3);
experience = data(:, 6); // Colonne 6 : nombre d'années d'expérience
salaire = data(:, 7);

experience = evstr(experience);
salaire = evstr(salaire);

female_indices = find(genre == "Female");
female_experience = experience(female_indices);
female_salaire = salaire(female_indices)
scatter(female_salaire , female_experience);
xtitle('Nuage de points du salaire en fonction de l experience pour les Femmes ')
xlabel("Salaire");
ylabel("Experience");

[a ,b]= reglin(female_salaire', female_experience')
x = [min(female_salaire), max(female_salaire)];
y = a * x +b
plot(x, y);
