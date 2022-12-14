/*
### Questão 2:

Utilizando uma query, obtenha todos os depoimentos (`testimonials`) cadastrados, incluindo o nome do remetente e do destinatário.

A resposta deve vir no formato:

|---id---|---writer---|---recipient---|--------------message------------------|
    1        João           Maria         Foi ótimo trabalhar com a Maria...
    2        Maria          João           Adorei trabalhar com o João...
   ...        ...            ...                     ...

*/

select testimonials.id as id, testimonials.message as message, w.name as writer, r.name as recipient from testimonials join users w on testimonials."writerId"=w.id join users r on 
testimonials."recipientId"=r.id;