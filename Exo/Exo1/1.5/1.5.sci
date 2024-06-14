data = read_csv('data.csv');
numerical_data = csvRead('data.csv', ',', '.');

education = numerical_data(:, 4);
age = numerical_data(:, 2);      
experience = numerical_data(:, 6); 
salary = numerical_data(:, 7);   

education_levels = [0, 1, 2, 3];
education_labels = ["High School", "Bachelor", "Master", "PhD"];

//les vecteurs pour les moyennes
mean_age = zeros(size(education_levels));
mean_experience = zeros(size(education_levels));
mean_salary = zeros(size(education_levels));

// calcule les moyennes pour chaque niveau d'éducation
for i = 1:size(education_levels, '*')
    level = education_levels(i);
    indices = find(education == level);
    
    mean_age(i) = mean(age(indices));
    mean_experience(i) = mean(experience(indices));
    mean_salary(i) = mean(salary(indices));
end

// afficher resultats
disp("Niveau d éducation  | Âge moyen  | Expérience moyenne  | Salaire moyen");
disp("====================|============|======================|===============");
for i = 1:size(education_levels, '*')
    printf("%-18s | %10.2f | %20.2f | %13.2f\n", education_labels(i), mean_age(i), mean_experience(i), mean_salary(i));
end
