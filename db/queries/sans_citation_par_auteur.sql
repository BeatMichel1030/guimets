select  T.abreviation, t.titre,  N.description,  N.cahier, N.page, count(C.id) nombre
from notes N
join textes T on T.id = N.texte_id
join auteurs A on T.auteur_id = A.id
left outer join citations C on C.note_id = N.id
where A.nom in ('Henry', 'Husserl') and (N.description is null or not N.description like '%résumé%')
group by N.id
having nombre = 0
order by T.abreviation;
--order by N.cahier desc, N.page asc;