/*stampo elenco corsi*/

SELECT Corso.CodiceProgressivo, Livello.Livello

FROM Corso, Livello

WHERE Corso.IdLivello = Livello.Id