ages = data(:, 2);

ages = evstr(ages);

unique_ages = unique(ages);
age_counts = zeros(unique_ages); 

for i = 1:length(unique_ages)
    age_counts(i) = sum(ages == unique_ages(i));
end

[unique_ages, sortIdx] = gsort(unique_ages, 'g', 'i');
age_counts = age_counts(sortIdx);

clf; 
bar(unique_ages, age_counts);
xlabel('Age');
ylabel('Nombre de salariés');
title('Distribution des âges des salariés');
