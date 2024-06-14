data = csvRead('data.csv', ',', '[]', "string");

genre = data(:, 3);

femmes_idx = find(genre == 'Female');
hommes_idx = find(genre == 'Male');
other_idx = find(genre == ‘Other’);

// Calculer les moyennes pour les femmes
salaire_femmes = data(femmes_idx, 7);
salaire_femmes = evstr(salaire_femmes);
age_femmes = data(femmes_idx, 2):
age_femmes = evstr(age_femmes);
experience_femmes = data(femmes_idx, 6);
experience_femmes = evstr(experience_femmes);

moyenne_salaire_femmes = mean(salaire_femmes);
moyenne_age_femmes = mean(age_femmes);
moyenne_experience_femmes = mean(experience_femmes);

// Calculer les moyennes pour les hommes
salaire_hommes = data(hommes_idx, 7);
salaire_hommes = evstr(salaire_hommes);
age_hommes = data(hommes_idx, 2);
age_hommes = evstr(age_hommes);
experience_hommes = data(hommes_idx, 6);
experience_hommes = evstr(experience_hommes);


moyenne_salaire_hommes = mean(salaire_hommes);
moyenne_age_hommes = mean(age_hommes);
moyenne_experience_hommes = mean(experience_hommes);

salaire_other = data(other_idx, 7);
salaire_other = evstr(salaire_other);
age_other = data(other_idx, 2);
age_other = evstr(age_other);
experience_other = data(other_idx, 6);
experience_other = evstr(experience_other):

moyenne_salaire_other = mean(salaire_other);
moyenne_age_other = mean(age_other);
moyenne_experience_other = mean(experience_other);


// Afficher les résultats
disp('Salaire moyen pour les femmes: ' + string(moyenne_salaire_femmes));
disp(' ge moyen pour les femmes: ' + string(moyenne_age_femmes));
disp('Expérience moyenne pour les femmes: ' + string(moyenne_experience_femmes));
disp('Salaire moyen pour les hommes: ' + string(moyenne_salaire_hommes));
disp(' ge moyen pour les hommes: ' + string(moyenne_age_hommes));
disp('Expérience moyenne pour les hommes: ' + string(moyenne_experience_hommes));
disp('Salaire moyen pour les non-binaires: ' + string(moyenne_salaire_other));
disp(' ge moyen pour les non-binaires: ' + string(moyenne_age_other));
disp('Expérience moyenne pour les non-binaires: ' + string(moyenne_experience_other));
