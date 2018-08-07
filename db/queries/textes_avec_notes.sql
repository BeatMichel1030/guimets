select  G.nom, count(*) from textes T join  genres G on G .id = T.genre_id 
where exists (select * from Notes N where N.texte_id = T.id)
group by G.id;