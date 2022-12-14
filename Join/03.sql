/*
    Utilizando uma query, obtenha todos os cursos (`courses`) que o usuário com id **30** já finalizou, incluindo o nome da escola. O que indica que um usuário terminou um curso é o campo `status` da tabela `educations`, que deve estar como "**finished**".

    A resposta deve vir no formato:

    |---id---|---name---|---course---|----school----|---endDate---|
    1        João      HTML/CSS       Driven       2021-12-01
    1        João      JavaScript     Driven       2022-01-20
   ...        ...         ...           ...          ...
*/

select u.id as id, u.name as name, c.name as course, s.name as school, e."endDate" as "endDate" from courses c 
join educations e on e."courseId"=c.id 
join schools s on s.id=e."schoolId" 
join users u on u.id=e."userId" 
where u.id=30 and e.status='finished';
select u.id as id, u.name as name, r.name as role, c.name as company, e."startDate" as "startDate" from companies c join experiences e on e."companyId"=c.id join roles r on e."roleId"=r.id join users u on e."userId"=u.id where u.id=50 and e."endDate" is null;