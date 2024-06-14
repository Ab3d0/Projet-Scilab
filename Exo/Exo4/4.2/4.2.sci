data = csvRead('data.csv', ',', '[]', "string");

experience = data(:, 6); // colonne d'indice 2
salaire = data(:, 7); // colonne d'indice 7

experience = evstr(experience);
salaire = evstr(salaire);

scatter(experience, salaire);
xtitle('Nuage de points de l experience en fonction du salaire’);
xlabel('Experience');
ylabel('Salaire');

[a,b]=reglin(experience',salaire')
x = [min(experience), max(experience)];
y = a * x +b
plot(x, y);

moyenne_salaire = mean(salaire);
moyenne_experence = mean(experience);
variance_salaire = variance(salaire);
variance_experience = variance(experience);
n = length(salaire);
covariance = sum((salaire - moyenne_salaire) .* (experience - moyenne_experience)) / n;
correlation_coefficient = covariance / sqrt(variance_salaire * variance_experience);
disp(correlation_coefficient);
