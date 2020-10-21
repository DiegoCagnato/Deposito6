/*stampo i dati degli allievi che partecipano al corso 4 */

SELECT Allievo.*, Corso.IdLivello, Livello.Livello
FROM Allievo, Corso, Livello
WHERE Allievo.CorsoFrequentato = 4 AND Corso.CodiceProgressivo = 4 AND Livello.Id = Corso.IdLivello