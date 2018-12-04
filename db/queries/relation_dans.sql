select  G1.nom élément, G2.nom dans, count(*) nombre from textes T1 
join textes T2 on T1.texte_id = T2.id
join genres G1 on G1.id = T1.genre_id
join genres G2 on G2.id = T2.genre_id
group by G1.id, G2.id
;