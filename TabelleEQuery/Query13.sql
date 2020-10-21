/*elenco degli allievi che hanno fatto almeno una lezione privata con la russa*/

SELECT DISTINCT Allievo.Cognome
FROM Allievo, LezioniPrivate
WHERE LezioniPrivate.Insegnante = (SELECT IdInsegnante FROM Insegnante WHERE Cognome = 'Stefanenko') 
      AND LezioniPrivate.Allievo = Allievo.IdAllievo