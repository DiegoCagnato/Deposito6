/*numero di iscritti ad un dato corso*/

SELECT NumeroIscritti
FROM Corso
WHERE IdLivello = (SELECT Id FROM Livello WHERE Livello = 'Elementary')