1.3:

<img src="./img/1.3..png"></div>

1.5:

| Niveau      |  Âge moyen     |  Expérience moyenne      |  Salaire moyen     | 
| :---        |   :---        |     :---        |   :---        | 
| High School |      26.85 |                 1.92 |      36706.69
| Bachelor  |    30.26 |                 5.42 |      95082.91
| Master |  35.17 |                 9.65 |     130112.06
| PhD |  41.15 |                13.92 |     165651.46




div('|                     | Salaire moyen | Âge moyen | Expérience moyenne |\n');
div('|---------------------|---------------|-----------|--------------------|\n');
div('| Femmes              | %.2f          | %.2f      | %.2f               |\n', moyenne_salaire_femmes, moyenne_age_femmes, moyenne_experience_femmes);
div('| Hommes              | %.2f          | %.2f      | %.2f               |\n', moyenne_salaire_hommes, moyenne_age_hommes, moyenne_experience_hommes);
div('| Non-binaires        | %.2f          | %.2f      | %.2f               |\n', moyenne_salaire_other, moyenne_age_other, moyenne_experience_other);