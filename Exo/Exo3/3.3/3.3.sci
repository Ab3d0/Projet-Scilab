data = csvRead('data.csv', ',', '[]', "string");

salaire = data(:,7);
salaire = evstr(salaire);

min_salaire = min(salaire);
max_salaire = max(salaire);
moyenne_salaire = mean(salaire);
mediane_salaire = median(salaire);
quartile_salaire = quart(salaire);
interquatile_salaire = iqr(salaire);

M = tabul(salaire, "i");
[max_freq, ind_max] = max(M(:,2));
most_frequent_salaire = M(ind_max, 1);

std_salaire = stdev(salaire);

disp("Min salaire : " + string(min_salaire));
disp("Max salaire : " + string(max_salaire));
disp("Moyenne salaire : " + string(moyenne_salaire));
disp("Médiane salaire : " + string(mediane_salaire));
disp("Quartiles des salaires : " + string(quartile_salaire));
disp("Intervalle interquartile des salaires : " + string(interquatile_salaire));
disp("Le salaire qui se répète le plus souvent est : " + string(most_frequent_salaire));
disp("Écart-type des salaires : " + string(std_salaire));

boxplot(salaire);
title('Répartition des salaires');
xlabel('Salaire');
ylabel('Montant (en €)');

