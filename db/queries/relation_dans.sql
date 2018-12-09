select  G1.nom élément, G2.nom dans, count(*) nombre from textes T1 
join textes T2 on T1.texte_id = T2.id
join genres G1 on G1.id = T1.genre_id
join genres G2 on G2.id = T2.genre_id
group by G1.id, G2.id
;

select abreviation, titre_livre from textes T join genres G on G.id = T.genre_id
where G.nom = 'dansCollection' and texte_id is null;

select T1.abreviation, T1.annee , T2.abreviation, T2.annee from textes T1 join textes T2 on T1.texte_id = T2.id
where T1.annee is not null and T1.annee <> T2.annee;



select count(*) from textes
where texte_id is not null and   titre_livre  is not null;

update textes
set titre_livre = null
where texte_id is not null and   titre_livre  is not null;

select count (*) from textes where texte_id is not null and annee is not  null;