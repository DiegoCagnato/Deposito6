/* elenco degli allievi che parteciperanno alla conferenza di Roger  */

SELECT Allievo.Cognome
FROM Allievo, Iscrizione
WHERE Iscrizione.Conferenza = (SELECT IdConferenza FROM Conferenza WHERE NomeConferenziere = 'Roger') 
       AND Allievo.IdAllievo=Iscrizione.Allievo