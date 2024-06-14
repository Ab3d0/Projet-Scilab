
data = csvRead('data.csv', ',', '[]', "string");

femmes = data(data(:, 3) == 'Female', :) 
hommes = data(data(:, 3) == 'Male', :)

professions_femmes = histc(femmes(:, 5), unique(femmes(:, 5))) 
professions_hommes = histc(hommes(:, 5), unique(hommes(:, 5)))

index_max_femmes = max(professions_femmes) 
index_max_hommes = max(professions_hommes)

profession_frequente_femmes = femmes(index_max_femmes, 5) profession_frequente_hommes = hommes(index_max_hommes, 5)

disp(“Profession la plus fréquente chez les femmes “ +string (profession_frequente_femmes)); 
disp('Profession la plus fréquente chez les hommes :') 
disp(profession_frequente_hommes)

