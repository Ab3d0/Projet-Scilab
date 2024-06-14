/*------------------------Pour les High_School ------------------------*/

data = csvRead('data.csv', ',', '[]', "string");

experience = data(:, 6);
salaire = data(:, 7);
niveau_etude = data(:,4);

experience = evstr(experience);
salaire = evstr(salaire);

niveau_education = evstr(niveaux_education);
indices_High_School = find(niveau_education == 0);
salaire_High_School = salaire(indices_High_School );
experience_High_School = experience(indices_High_School );

scatter(salaire_High_School , experience_High_School );
xtitle("Nuage de points du salaire en fonction de l expérience pour les High_School");
xlabel("Salaire");
ylabel("Experience");

[a ,b]= reglin(salaire_High_School', experience_High_School');
x = [min(salaire_High_School ), max(salaire_High_School)];
y = a * x +b
plot(x, y);

/*------------------------Pour les Bachelors ------------------------*/

data = csvRead('data.csv', ',', '[]', "string");
experience = data(:, 6);
salaire = data(:, 7);
niveau_etude = data(:,4);
experience = evstr(experience);
salaire = evstr(salaire);
niveau_education = evstr(niveaux_education);
indices_Bachelor = find(niveau_education == 1);
salaire_Bachelor = salaire(indices_Bachelor);
experience_Bachelor = experience(indices_Bachelor);
scatter(salaire_Bachelor, experience_Bachelor);
xtitle("Nuage de points du salaire en fonction de l expérience pour les Bachelor");
xlabel("Salaire");
ylabel("Experience");

[a ,b]= reglin(salaire_Bachelor', experience_Bachelor');
x = [min(salaire_Bachelor), max(salaire_Bachelor)];
y = a * x +b
plot(x, y);

/*------------------------Pour les Master ------------------------*/

data = csvRead('data.csv', ',', '[]', "string");

experience = data(:, 6);
salaire = data(:, 7);
niveau_etude = data(:,4);

experience = evstr(experience);
salaire = evstr(salaire);
niveau_education = evstr(niveaux_education);

indices_Master = find(niveau_education == 2);
salaire_Master = salaire(indices_Master);
experience_Master = experience(indices_Master);
scatter(salaire_Master, experience_Master);
xtitle("Nuage de points du salaire en fonction de l expérience pour les Master");
xlabel("Salaire");
ylabel("Experience");

[a ,b]= reglin(salaire_Master', experience_Master');
x = [min(salaire_Master), max(salaire_Master)];
y = a * x +b
plot(x, y);


/*------------------------Pour les PhD ------------------------*/

data = csvRead('data.csv', ',', '[]', "string");

experience = data(:, 6);
salaire = data(:, 7);
niveau_etude = data(:,4);

experience = evstr(experience);
salaire = evstr(salaire);
niveau_education = evstr(niveaux_education);

indices_PhD = find(niveau_education == 3);
salaire_PhD = salaire(indices_PhD);
experience_PhD = experience(indices_PhD);
scatter(salaire_PhD, experience_PhD);

xtitle("Nuage de points du salaire en fonction de l expérience pour les PhD");
xlabel("Salaire");
ylabel("Experience");

[a ,b]= reglin(salaire_PhD', experience_PhD');
x = [min(salaire_PhD), max(salaire_PhD)];
y = a * x +b
plot(x, y);


