/*
    ### Questão 1:

    Utilizando 1 query, obtenha a quantidade de experiencias (`experiences`) atuais, ou seja, com `“endDate”` diferente de `NULL`;
*/

select count(e."endDate") as "currentExperiences" from experiences e;