data = csvRead('data.csv', ',', '[]', "string");

age = data(:, 2); // colonne d'indice 2
salaire = data(:, 7); // colonne d'indice 7

age = evstr(age);
salaire = evstr(salaire);

scatter(age, salaire);
xtitle('Nuage de points de l age en fonction du salaire’);
xlabel('Age');
ylabel('Salaire');

[a,b]=reglin(age',salaire')
x = [min(age), max(age)];
y = a * x +b
plot(x, y);

moyenne_salaire = mean(salaire);
moyenne_age = mean(age);
variance_salaire = variance(salaire);
variance_age = variance(age);
n = length(salaries);
covariance = sum((salaire - moyenne_salaire) .* (age - moyenne_age)) / n;
correlation_coefficient = covariance / sqrt(variance_salaire * variance_age);
disp(correlation_coefficient);
