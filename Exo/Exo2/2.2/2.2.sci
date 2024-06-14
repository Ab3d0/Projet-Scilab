experience = data(:, 6); 
experience = evstr(experience); 

unique_experience = unique(experience);
experience_counts = zeros(size(unique_experience));

for i = 1:length(unique_experience)
    experience_counts(i) = sum(experience == unique_experience(i));
end

clf;
bar(unique_experience, experience_counts);
xlabel('Années d 'expérience');
ylabel('Nombre de salariés');
title('Distribution de l expérience des salariés');

