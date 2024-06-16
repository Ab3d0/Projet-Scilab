2.1:


<img src="./img/1.png"></div>



2.2:

<img src="./img/2.png"></div>


**Question 2.3**

disp("L âge minimum est : " + string(min_age));

  "L âge minimum est : 21"

--> disp("L âge maximum est : " + string(max_age));

  "L âge maximum est : 62"

--> disp("L âge moyen est : " + string(moyenne_age));

  "L âge moyen est : 33.622033"

--> disp("La médiane de l âge est : " + string(mediane_age));

  "La médiane de l âge est : 32"

--> disp("Les quartiles de l âge sont : " + string(quartile_age));

  "Les quartiles de l âge sont : 28"
  "Les quartiles de l âge sont : 32"
  "Les quartiles de l âge sont : 38"

--> disp("L écart interquartile de l âge est : " + string(interquatile_age));

  "L écart interquartile de l âge est : 10"

--> // Calcul de l'âge le plus fréquent
M = tabul(age, "i");
[max_freq, ind_max] = max(M(:, 2));
most_frequent_age = M(ind_max, 1);
disp("L âge qui se répète le plus souvent est : " + string(most_frequent_age));

  "L âge qui se répète le plus souvent est : 27"

--> // Calcul de l'écart type de l'âge

std_age = stdev(age);
disp("L écart type de l âge est : " + string(std_age));

  "L écart type de l âge est : 7.6156456"
