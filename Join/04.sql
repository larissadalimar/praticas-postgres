/*
    ### Questão 4:

    Utilizando uma query, obtenha as empresas (`companies`) para as quais o usuário com id **50** trabalha atualmente. Para filtrar quem trabalha atualmente, utilize o campo `endDate` da tabela `experiences`. Se ele estiver null (`IS NULL`), significa que a pessoa ainda não encerrou a experiência dela na empresa, ou seja, está trabalhando lá.

    A resposta deve vir no formato:

    |---id---|---name---|--------role--------|----company----|---startDate---|
        1        João      Software Engineer        OLX          2020-06-01
        1        João         Consultant            IBM          2022-02-01
    ...        ...            ...                ...              ...
*/

select u.id as id, u.name as name, r.name as role, c.name as company, e."startDate" as "startDate" from companies c 
join experiences e on e."companyId"=c.id 
join roles r on e."roleId"=r.id 
join users u on e."userId"=u.id 
where u.id=50 and e."endDate" is null;